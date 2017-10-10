clc;
//high input impedance of JFET
R1=1500000;
R2=650000;
Rin=(R1*R2)/(R1+R2);
Rs=1000;
Cc1=0.00000001;
f1G=1/(2*3.14*(Rs+Rin)*Cc1);
Rd=5000;
RL=10000;
Cc2=0.0000001;
f1D=1/(2*3.14*(Rd+RL)*Cc2);
disp('Hz',f1G,"f1G=")//The answers vary due to round off error
disp('Hz',f1D,"f1D=")//The answers vary due to round off error
