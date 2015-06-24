//example 10.2
clc; funcprot(0);
phi=32;
Gamma=112;
s=12;//spacing
H=27;
Ka=(tan(45*%pi/180-32*%pi/180/2))^2;
sigmaa=0.65*Gamma*Ka*H;
A=sigmaa*15*15/2/9;
B1=603.44*15-A;
C=sigmaa*12*12/2/9; 
B2=sigmaa*s-C;
Pa=A*s/1000;
Pb=(B1+B2)*s/1000;
Pc=C*s/1000;
disp(Pa,"strut loads at A in kN");
disp(Pb,"strut loads at B in kN");
disp(Pc,"strut loads at C in kN");

