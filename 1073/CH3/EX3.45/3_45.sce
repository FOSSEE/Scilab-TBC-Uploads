clc;
clear;
//Exmaple 3.45
dT=10   //[K]
P=506.625   //[kPa]
P=P/10^3    //[Mpa]
D=25.4  //Diameter [mm]
D=D/1000    //[m]
h=2.54*(dT^3)*(%e^(P/1.551))   //[W/sq m.K]
//Q=h*%pi*D*L*dT
//Heat transfer rate per meter length of tube is 
Q_by_l=h*%pi*D*dT   //[W/m]
printf("\n Rate of heat transfer per 1m length of tube is %f W/m",round(Q_by_l));
