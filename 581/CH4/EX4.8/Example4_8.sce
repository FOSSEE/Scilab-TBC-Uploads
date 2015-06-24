
clear;
clc;

printf("\t Example 4.8\n");

d=0.02; //diameter of alluminium rod,m
k=205; //thermal conductivity of rod,W/(m.K)
l=0.08; //length of rod, m
T1=423; //wall temperature, K
T2=299; //air temperatutre, K
h=120; //convective coefficient, W/(m^2*K)

mL=(h*(l^2)/(k*d/4))^0.5;  // formula for mL=((h*Perimeter*l^2)/(k*Area))^0.5
Bi=h*l/k
a1=(cosh(0)+(Bi/mL)*sinh(0))/(cosh(mL)+(Bi/mL)*sinh(mL));  //formula for temperature difference T-Ttip

Ttip1=T2+a1*(T1-T2); // exact tip temperature
Tt1=Ttip1-273;
printf("\t the exact tip temperature is : %.2f C\n",Tt1);

a2=(cosh(0)+(Bi/mL)*sinh(0))/(cosh(mL)); //if heat transfer from the tip is not considered
Ttip2=T2+a2*(T1-T2);
Tt2=Ttip2-273;
printf("\t approximate tip temperature is : %.2f C\n",Tt2);
printf("\t thus the insulated tip approximation is adequate for the computation in this case.");
//End
