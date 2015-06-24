//to find the lower current limit, motor speed at each stud

clc;
Pop=25*1000;
Vt=230;
Ra=.12;
rf=120;
Nfl=2000;
Iafl=Pop/Vt;
Iamax=1.5*Iafl;
k=5;
I1=Iamax;
R1=Vt/I1;
r=(R1/Ra)^(1/(k-1));
I2=I1/r;
function [R]=res (re)
    R=(1/r)*re;
endfunction
R_1=R1-res(R1);disp(R_1,'R1(ohm)');
R_2=res(R_1);disp(R_2,'R2(ohm)');
R_3=res(R_2);disp(R_3,'R3(ohm)');
R_4=res(R_3);disp(R_4,'R4(ohm)');

Iaf1=103.7;
Ea=Vt-Iaf1*Ra;
Ka=Ea/Nfl;
function [n]=speed(r)
    Ea=Vt-I2*r;
    n=Ea/Ka;
endfunction
r1=R1;
n1=speed(r1);disp(n1,'n1(rpm)');
r2=r1-R_1;
n2=speed(r2);disp(n2,'n2(rpm)');
r3=r2-R_2;
n3=speed(r3);disp(n3,'n3(rpm)');
r4=r3-R_3;
n4=speed(r4);disp(n4,'n4(rpm)');
