clc
clear 
printf("example 5.8 page number 188\n\n")

//to find the heat transfer coefficient
density=984.1     //in kg/cubic meter
v=3   //in m/s
viscosity=485*10^-6;    //in Pa-s
k=0.657    //in W/mK
cp=4178   //in J/kg K
d=0.016    //in m

Re=(density*v*d)/viscosity;
Pr=(cp*viscosity)/k;

//dittus boelter equation
h=0.023*Re^0.8*Pr^0.3*(k/d);
printf("heat transfer coefficient = %f W/sq meter K",h)

//Sieder Tate equation
viscosity_w=920*10^-6
h1=0.023*Re^0.8*Pr^(1/3)*(k/d)*(viscosity/viscosity_w)^0.14;
printf("\n\nheat transfer coefficient = %f W/sq meter K",h1)
