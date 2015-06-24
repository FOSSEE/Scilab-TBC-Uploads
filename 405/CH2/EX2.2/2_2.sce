clear;
clc;
printf("\t\t\tExample Number 2.2\n\n\n");
// multilayer cylindrical system
// illustration2.2
// solution

ID = 0.02;// [m] inner diameter of steel
OD = 0.04;//[m] outer diameter of steel
t = 0.03;//[m] thickness of asbestos insulation
// system is like three concentric cylinders 
T1 = 600;// [degree celsius] inside wall temperature
T2 = 100;// [degree celsius] outside insulation temperature
Ks = 19;//[W/m degree celsius] heat transfer coefficient of steel
Ka = 0.2;// [W/m degree celsius] heat transfer coefficient of asbestos
// heat flow is given by per unit length
Q_l = ((2*22*(T1-T2)/7)/((log(OD/ID)/Ks)+(log(0.1/OD)/Ka)));// [W/m]
// above calculated heat flow is used to calculate the interface temperature
// between the outside wall and the insulation
Ta = Q_l*(log(0.1/OD)/(2*3.14*Ka))+T2;// [degree celsius] Ta is interface temperature
printf("heat flow is given by %f W/m",Q_l);
printf("\n the interface temperature is %f degree celsius ",Ta);
