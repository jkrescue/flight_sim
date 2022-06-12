function  y = js_decode_landing(u)
if u(1,1) <=0
    y = zeros(1,13);
else
s = char(u);
index =  strfind(s,'}');
caijian = s(1:index(end));
result = jsondecode(caijian);
% y = result.Rhapsody2Mat.TaxiCommand.data;
y(1) = result.StartLanding.data;
y(2) = result.StartTuning.data;  
y(3) = result.StopTuning.data;
y(4) = result.Fault_FlapJam.data;
y(5) = result.Landing.data;
y(6) = result.LandingDeviation.data(1);
y(7) = result.LandingDeviation.data(2);
y(8) = result.LandingDeviation.data(3);
y(9) = result.LandingGear_status.data;
y(10) = result.Fault_Wind.data(1);
y(11) = result.Fault_Wind.data(2);
y(12) = result.Fault_Wind.data(3);
y(13) = result.ReFly.data;
% y = str2double(result.aircraft.mass);
end
end