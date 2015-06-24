//example 11.8
clc; funcprot(0);
//part1
Ep=207e6;
Ip=123e-6;
nh=12000;
//from table
xo=0.008;
L=25;
Fy=248000;
D=0.254;
Am=0.772;
Gamma=18;
phi=35;
Kp=(tan(%pi/4+phi*%pi/360))^2;
My=Fy*Ip*2/D;
Qug=140*Kp*D^3*Gamma;

//part2
Qg1=xo*(Ep*Ip)^0.6*nh^0.4/0.15/L;

if Qug>Qg1 then
    Qg=Qg1;
    disp(Qg,"lateral load in kN");
end

