//Calculate voltage on line end unit and capacitance Cx required
clear;
clc;
//soltion
//given
V=20;//kV
Sc=0.2;//shunt capacitance
V2=poly(0,"V2");
V1=poly(0,"V1");
V2=V1+0.2*V1;
V3=V2;
v1=roots(V1+V2+V3-V);
V3=1.2*v1;
printf("Voltage on line end unit= V3= %.2f kV\n",V3);
Cx=poly(0,"Cx");
C=poly(0,"C");
printf("For Cx \nC*1.2*V1 + Cx*1.2*V1 = C*1.2*V1 + C*2.2V1/5\n");
C_=roots(Cx*1.2-2.2/5);//after simplifying the eqution
Cx=C_*C;
printf("Cx=");
disp(Cx);
printf("Farads")
