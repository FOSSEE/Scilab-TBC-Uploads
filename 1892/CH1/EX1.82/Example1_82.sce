// Example  1.82

clc;clear;close;

// Given data
format('v',7);
TstByTfl=1;//ratio
TmaxByTfl=2;//ratio

//calculations
TstByTmax=TstByTfl/TmaxByTfl;//ratio
//Formula : TstByTmax=2*Sm/(1+Sm^2)
//TstByTmax*Sm^2-2*Sm+TstByTmax=0
P=[TstByTmax -2 TstByTmax];//polynomial for Sm
Sm=roots(P);//slip at max torque
Sm=Sm(2);//neglecting the higher value
disp(Sm,"(a) Slip at which max torque occurs : ");
//Formula : TflByTmax=2*S*Sm/(S^2+Sm^2) 
//S^2-TmaxByTfl*2*S*Sm+Sm^2=0
P=[1 -TmaxByTfl*2*Sm Sm^2];//polynomial for S
S=roots(P);//slip at max torque
//Sm=Sm(2);//neglecting the higher value
S=S(2);//neglecting the higher value
disp(S,"(b) Full load slip : ");
//I2stByI2fl^2=(Sm^2+S^2)/S^2/(1+Sm^2)
I2stByI2fl=sqrt((Sm^2+S^2)/S^2/(1+Sm^2));//ratio
disp(I2stByI2fl,"(c) Rotor current at starting ag full load current : ");
