clc;
clear;
close;
phi = (0:0.1:2*pi+0.1);
R = 400;
plot(R*cos(phi),R*sin(phi));
axis equal;
hold on;
time = [];
for i = -0.1:-0.1:-pi/2
    angle2 = -i*57.3;
    x = R*cos(i);
    y = R*sin(i);
    angle = atan(-x/y);
    theta = pi/2 - angle;
    AB = R*(-x/y);
    r = AB * tan(theta/2);
    time = [time,(pi-theta)/(80/r)];
    x1 = r;
    y1 = x1* y/x;
    angle1 = angle-pi/2:-0.1:-pi;
    plot(x1+r*cos(angle1),y1+r*sin(angle1));
    hold on;
    
    
end