
clear;
clc;

printf("\t Example 8.4\n");

T1=400;     //hot oil temp.,K
D=0.005;          //diameter of line carrying oil, m
T2=300;    //temp. of air around the tube,K
Tav=350;    //average BI temp.,K

//we evaluate properties at this temp. and write g as ge*(g-level), where ge is g at the earth surface and the g-level is the fraction of ge in the space vehicle.
b=1/T2;    // b=1/v*d(R*T/p)/dt=1/To   characterisation constant of thermal expansion of solid, K^-1

v1=2.062*10^-5;   // molecular diffusivity, m^2/s
v2=2.92*10^-5;    //molecular diffusivity, m^2/s
Pr=0.706;   //prandtl no.

g=[10^-6 10^-5 10^-4 10^-2];
i=1;
while(i<5)
Ral=(9.8*b*((T1-T2))*(D^(3))/(v1*v2))*g(i);    // Rayleigh no.
Nu(i)=(0.6+0.387*(Ral/(1+(0.559/Pr)^(9/16))^(16/9))^(1/6))^2;
//Nu(i)=(0.6+0.387*((Ral)/(1+(0.559/Pr)^(9/16))^(16/9))^1/6)^2;    //churchill correlation. 
printf("\t Nusselt no. are : %.3f\n",Nu(i)); 
h(i)=Nu(i)*0.0297/D;    // convective heat transfer coefficient,W/(m^2*K)
printf("\t convective heat transfer coefficient are : %.2fW/(m^2*K)\n",h(i));
Q(i)=%pi*D*h(i)*(T1-T2);    //heat transfer,W/m
printf("\t heat transfer is :%.2fW/m of tube\n",Q(i));
i=i+1;
end 

//end