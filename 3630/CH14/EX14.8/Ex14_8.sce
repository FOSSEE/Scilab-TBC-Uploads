clc;
R1=18000;
R2=4700;
Hie=4400;
Req=(R1*R2)/(R1+R2);
Rin=(Req*Hie)/(Req+Hie);
Rs=600;
C=0.000001;
fB1=1/(2*3.14*(Rs+Rin)*C);
disp('Hz',fB1,"fB1=")//The answers vary due to round off error
