clear;
clc;

//Example8.7[Non-isothermal fully developed Friction in the Transition Region]
//Given:-
q=8;//Wall heat flux[kW/m^2]
xm=0.34;//Mass fraction
d=0.0158;//Inside diameter[m]
V=1.32*10^(-4);//Flow rate[m^3/s]
Pr=11.6;//Prandtl Number
nu=1.39*10^(-6);//[m^2/s]
p=1.14;//(mu_b/mu_s)i.e. ratio of viscosities of two substances
Gr=60800;//Grashof number
//Solution:-
Ac=%pi*(d^2)*(1/4);//[m^2]
Re=(V/Ac)*d/nu;
disp(Re,"Reynolds number is")
//For bell mouth inlet shape
Cf1=((1+((round(Re)/5340)^(-0.099)))^(-6.32))*(p^(-2.58-0.42*(60.800^(-0.41))*(11.6^0.265)));
disp(Cf1,"For bell mouth inlet friction coefficient is")
//For square edged inlet Case
Cf2=(0.0791/(Re^(0.25)))*(p^(-0.25));
disp(Cf2,"For square edged inlet case coefficient of friction is")