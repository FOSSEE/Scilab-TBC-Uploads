
clear;
clc;

printf("\t Example 11.4\n");
T1=373.15;          //temp.of tea,K
XN2=0.7808;    //mole fraction of nitrogen
XO2=0.2095;    //mole fraction of oxygen
Xar=0.0093;    //mole fraction of
a=[3.798 3.467 3.542];    //collisin diameter,m
b=[71.4 106.7 93.3];    //lennard jones constant,K
M=[28.02 32 39.95];    //molar masses,kg/kmol
c=[0.9599 1.057 1.021];    //potential well function
d=[1.8*10^-5 2.059*10^-5 2.281*10^-5];    //calculated viscosity,kg/(m*s)
e=[1.8*10^-5 2.07*10^-5 2.29*10^-5 ];    // theoritical viscosity,kg/(m*s)
f=[0.0260 0.02615 0.01787];    //theoritical thermal conducitvity,W/(m*K)
i=1;
while(i<4)
u(i)=2.6693*10^-6*(M(i)*T1)^0.5/((a(i)^2*c(i)));    //viscosity,kg/(m*s)
k(i)=0.083228/((a(i))^2*c(i))*(T1/M(i))^0.5    //thermal conductivity,W/(m*s)

i=i+1;
end
umc=XN2*u(1)/0.9978+XO2*u(2)/1.008+Xar*u(3)/0.9435 ;   //calculated mixture viscosity,kg/(m*s)
umc1=1.857*10^-5;
printf("\t theoritical mixture viscosity is : % -5e kg/(m*s)\n",umc1);
umd=XN2*e(1)/0.9978+XO2*e(2)/1.008+e(3)*Xar/0.9435;    //theoritical mixture viscosity,kg/(m*s)
printf("\t calculated mixture viscosity is : % -5e kg/(m*s)\n",umd);

kmc=XN2*k(1)/0.9978+XO2*k(2)/1.008+Xar*k(3)/0.9435;    //calculated thermal conducitvity,W/(m*K)
kmc1=0.02623;
printf("\t theoritical thermal conducitvity is : %f W/(m*K)\n",kmc1);
kmd=XN2*f(1)/0.9978+XO2*f(2)/1.008+Xar*f(3)/0.9435;    //theoritical thermal conductivity, W/(m*K)
printf("\t calculated thermal conducitvity is : %.5f W/(m*K)\n",kmd);
Cp=1006    //mixture diffusivity,j/(kg*K)
pr=umd*Cp/kmd;    //prandtl no.
printf("\t prandtl no. is : %.3f\n",pr);
//end
