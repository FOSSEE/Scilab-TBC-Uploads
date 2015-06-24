
clear ;
clc;

printf("\t Example 8.5\n");

T2=300;     //air temp.,K
P=15;       //delivered power,W
D=0.17;       //diameter of heater,m
v1=1.566*10^-5;   // molecular diffusivity, m^2/s
b=1/T2;    // b=1/v*d(R*T/p)/dt=1/To   characterisation constant of thermal expansion of solid, K^-1
Pr=0.71;   //prandtl no.
v2=2.203*10^-5;    //molecular diffusivity, m^2/s
v3=3.231*10^-5;    //molecular diffusivity at a b except at 365 K., m^2/s
v4=2.277*10^-5;    //molecular diffusivity at a b except at 365 K., m^2/s
k1=0.02614;        //thermal conductivity
k2=0.0314;        //thermal conductivity

//we have no formula for this situation, so the problem calls for some guesswork.following the lead of churchill and chau, we replace RaD with RaD1/NuD in eq.   
//(NuD)^(6/5)=0.82*(RaD1)^(1/5)*Pr^0.034

delT=1.18*P/(3.14*D^(2)/4)*(D/k1)/((9.8*b*661*D^(4)/(0.02164*v1*v2))^(1/6)*Pr^(0.028));

//in the preceding computation, all the properties were evaluated at T2.mow we must return the calculation,reevaluating all properties except b at 365 K.

delTc=1.18*661*(D/k2)/((9.8*b*661*D^(4)/(k2*v3*v4))^(1/6)*(0.99));

TS=T2+delTc;
TS1=TS-271.54

printf("\t average surface temp. is :%.0f K\n",TS1);

printf("\t that is rather hot.obviously, the cooling process is quite ineffective in this case.")
//end
