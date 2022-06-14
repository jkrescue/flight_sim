function [x1,y1] = tuning2landing(x,y,chufa,time,vx)
angle = atan(-x/y);
theta = pi/2 - angle;
AB = 800*(-x/y);
r = AB * tan(theta/2);
Ox1 = r;
Oy1 = Ox1* y/x;
w = vx / r;
t = time-chufa;
angle1 = angle-pi/2 - w*t;
x1 = Ox1 + r*cos(angle1);
y1 = Oy1 + r*sin(angle1);

ebd