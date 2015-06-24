clc;
warning("off");
printf("\n\n example12.16 - pg624");
// given
d=24*10^-6;  //[m] - diameter of wire
T=415;  //[K] - operating temperature of hot wire anemometer
P=0.1;  //[W] - power consumption
L=250*d;
Tair=385;  //[K] - temperature of air in duct
A=%pi*d*L;
Tfilm=(T+Tair)/2;
// properties of air at Tfilm
p=0.8825;  //[kg/m^3]
mu=2.294*10^-5;  //[kg/m*s]
cpf=1013;  //[J*kg/K]
kf=0.03305;  //[W/m*K]
Npr=0.703;
h=P/(A*(T-Tair));
Nnu=(h*d)/kf;
function y=func(x)
    y=Nnu-0.3-((0.62*(x^(1/2))*(Npr^(1/3)))/((1+((0.4/Npr)^(2/3)))^(1/4)))*((1+((x/(2.82*(10^5)))^(5/8)))^(4/5));
endfunction
// on solving the above function for x by using some root solver technique like Newton raphson method , we get
x=107.7;
// or
Nre=107.7;
y=func(x);
Um=(Nre*mu)/(d*p);
printf("\n\n The velocity is \n Um = %f m/sec = %f ft/sec",Um,Um*3.28);
