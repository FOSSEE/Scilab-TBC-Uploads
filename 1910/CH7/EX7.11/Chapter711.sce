// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Introduction to heat transfer by S.K.Som, Chapter 7, Example 11")
//Liquid sulphur di oxide in a saturated state flows inside a L=5m long tube and D=25mm internal diameter with a mass flow rate(mdot) of 0.15 kg/s.
//The tube is heated at a constant surface temprature(Tw) of -10°C and the inlet fluid temprature is Tbi=-40°C
Tw=-10;
Tbi=-40;
mdot=0.15;
D=0.025;//in metre
L=5;
//The properties to be used shoud be estimated at a temprature which is arithmetic mean of Tbi and Tbo.
//Since (outlet fluid temprature Tbo) is not known a priori,the solution has to be based on an iterative method starting with a guess value of Tb1=(Tbi+Tbo)/2
//Here we denote bulk mean temprature as Tb.The superscript refers to the no. of trials
//For first trial,guess Tbo1=-20°C;so Tb1=-30°C
//We have the property values as follows at a temprature of -30°C.
rhob1=1520.64;//density in kg/m^3
nub1=0.371*10^-6;//kinematic viscosity in m^2/s
kb1=0.23;//conductivity in W/(m*°C)
Prb1=3.31;//Prandtl number
mub1=nub1*rhob1;//viscosity in kg/(m*s)
cpb1=1361.6;//specific heat in J/(kg*K)
//muw=nuw*rhow at Tw=10°C
nuw=0.288*10^-6;//kinematic viscosity at Tw in m^2/s
rhow=1463.61;//density at Tw in kg/m^3
muw=nuw*rhow;//viscosity at Tw in kg/(m*s)
//The reynolds number is found as Re1=(4*mdot)/(%pi*D*mub1)
disp("Reynold number is")
Re1=(4*mdot)/(%pi*D*mub1)
//Hence the flow is turbulent
//Now using equation, nusselt number is,Nubar1=0.027*(Re1)^0.8*Prb1^(1/3)*(mub1/muw)^0.14
disp("Nusselt number is")
Nubar1=0.027*(Re1)^0.8*Prb1^(1/3)*(mub1/muw)^0.14
//The heat transfer transfer coefficient hbar1=(kb1/D)*Nubar1
disp("The heat transfer transfer coefficient in W/(m^2*°C) ")
hbar1=(kb1/D)*Nubar1
//The outlet fluid temprature can be found by making use of eqn Tbo2=Tw-(Tw-Tbi)*%e((-%pi*D*L*hbar1)/(mdot*cpb1))
disp("Outlet fluid temprature in first iteration is Tbo2 in °C is")
Tbo2=Tw-(Tw-Tbi)*%e^((-%pi*D*L*hbar1)/(mdot*cpb1))
//Tb2 is the bulk mean temprature.
disp("Tb2 in °C is")
Tb2=(Tbi+Tbo2)/2
//Since the value differs from the assumed value of Tb1=-30°C,WE require furtheriteration,Therfore we start second trial with Tb2=-28.36°C
//We have the property value at a temprature of -28.36°C as follows
rhob2=1514;//density in kg/m^3
nub2=0.362*10^-6;//kinematic viscosity in m^2/s
kb2=0.229;//conductivity in W/(m*°C)
Prb2=3.23;//Prandtl number
mub2=nub2*rhob2;//viscosity in kg/(m*s)
cpb2=1362;//specific heat in J/(kg*K)
//muw=nuw*rhow at Tw=10°C
nuw=0.288*10^-6;//viscosity at Tw in m^2/s
rhow=1463.61;//density at Tw in kg/m^3
muw=nuw*rhow;//kinematic viscosity at Tw in kg/(m*s)
//The reynolds number is found as Re2=(4*mdot)/(%pi*D*mub2)
disp("Reynold number is")
Re2=(4*mdot)/(%pi*D*mub2)
//Now using equation, nusselt number is,Nubar2=0.027*(Re2)^0.8*Prb2^(1/3)*(mub2/muw)^0.14
disp("Nusselt number is")
Nubar2=0.027*(Re2)^0.8*Prb2^(1/3)*(mub2/muw)^0.14
//The heat transfer transfer coefficient hbar2=(kb2/D)*Nubar2
disp("The heat transfer transfer coefficient in W/(m^2*°C) ")
hbar2=(kb2/D)*Nubar2
//The outlet fluid temprature can be found by making use of eqn Tbo3=Tw-(Tw-Tbi)*%e((-%pi*D*L*hbar2)/(mdot*cpb2))
disp("Outlet fluid temprature in second iteration is Tbo3 in °C is")
Tbo3=Tw-(Tw-Tbi)*%e^((-%pi*D*L*hbar2)/(mdot*cpb2))
//Tb3 is the bulk mean temprature.
disp("Tb3 in °C is")
Tb3=(Tbi+Tbo3)/2
//We see that difference between Tbo2 and Tbo3 and that between Tb2 and Tb3 is marginal.Therfore we can stop iteration and present the result as Tbo=-16.67°C
disp("The Exit fluid temprature after second iteration is obtained as Tbo=-16.67°C")
