//example 11.7
clc; funcprot(0);
Ep=207e6;
Ip=123e-6;
nh=12000;
//from table
xz=0.008;
Ax=2.435;
T=(Ep*Ip/nh)^0.2;
Qg1=xz*Ep*Ip/Ax/T^3;
//part2
Fy=248000;
d1=0.254;
Am=0.772;
Mzmax=Fy*Ip*2/d1;
Qg2=Mzmax/Am/T;
if Qg2>Qg1 then
    Qg=Qg1;
    disp(Qg,"lateral load in kN");
end

