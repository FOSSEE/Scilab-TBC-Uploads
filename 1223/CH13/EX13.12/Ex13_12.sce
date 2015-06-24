clear;
clc;
//Example 13.12
Kp=0.6;
bn=200;
Va=50;
Vt=0.026;
Ic13=0.20;
Ri2=bn*Vt/Ic13;
printf('\ninput resistance to the gain stage=%.2f KOhm\n',Ri2)
Iq5=Ic13;
Ad=sqrt(2*Kp*Iq5)*Ri2;
printf('\nsmall signal voltage gain=%.2f\n',Ad)
