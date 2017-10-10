clc;
//high input impedance of JFET
R1=18000;
R2=4700;
Rin=(R1*R2)/(R1+R2);
Rs=600;
Cc1=0.000001;
f1G=1/(2*3.14*(Rs+Rin)*Cc1);
disp('Hz',f1G,"f1G=")//The answers vary due to round off error
