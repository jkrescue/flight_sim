function y = js_encode_landing(x)
u=cell(27,1);
for i = 1:max(size(x))
    u{i} = sprintf('%8.2f',x(i));
end
for i = 2:7
    u{i} = [u{i},','];
end
for i = 9:20
    u{i} = [u{i},','];
end
for i = 23:25
    u{i} = [u{i},','];
end
S = struct("LandingRequest",...
            struct("id", 1,"type","int","data", [u{1}],"dirction","OUT","info","ToRhap,0_NotReady,1_Ready"),...
            "P_Ainfo",...
            struct("id", 2,"type","data","data",[u{2},u{3},u{4},u{5},u{6},u{7}],"dirction","OUT","info","ToRhap,plane Position Information"),...
            "TuningStatus",...
            struct("id", 3,"type","int","data", [u{8}],"dirction","OUT","info","ToRhap,Carrier Position & Velocity Information"),...
            "CarrierPosition_Velocity",...
            struct("id", 4,"type","data","data",[u{9},u{10},u{11},u{12},u{13},u{14}],"dirction","OUT","info","ToRhap,Carrier Position & Velocity Information"),...
            "PlaneVelocity",...
            struct("id", 5,"type","data","data",[u{15},u{16},u{17},u{18},u{19},u{20}],"dirction","OUT","info","ToRhap,plane velocity Information"),...
            "HoldingPatternOff",...
            struct("id", 6,"type","int","data", [u{21}],"dirction","OUT","info","ToRhap,Holding Pattern Off Information"),...
            "MassConfirm",...
            struct("id", 7,"type","int","data", [u{22}],"dirction","OUT","info","ToRhap,Aircraft mass Information"),...
            "LandingDeviation_return",...
            struct("id", 8,"type","data","data",[u{23},u{24},u{25}],"dirction","OUT","info","deviation"),...
			"LandingGear_Status",...
            struct("id", 9,"type","int","data", [u{26}],"dirction","OUT","info","deviation"),...
			"FinishLanding",...
            struct("id", 10,"type","int","data",[u{27}],"dirction","OUT","info","0_no,1_yes"),...
            "Time",datetime('now','Format','yyyy-MM-dd HH:mm:ss.SSS'));

coder.extrinsic('jsonencode');

result = jsonencode(S);
y = double(result);

end