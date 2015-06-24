//Transport Processes and Seperation Process Principles
//Chapter 7
//Example 7.3-1
//Principles of Unsteady state and convective mass transfer
//given data
//si units
Dab=6.92*(10^-6);//m2/s
pa1=74;//Pa
R=8314.3;
T=318;
L=1.1;
ca1=pa1/(R*T);
mu=1.932*(10^-5);
rho=1.114;
Sc=mu/(rho*Dab);
D=0.020;
v=0.8;
Re=(D*v*rho)/mu;
if Re<2100 then
y=Re*Sc*(D/L)*(3.14/4);
end
//using a graph
X=0.55;//(Ca-Ca0)/(Cai-Ca0)
Ca0=0;//initial concentration
Cai=2.799*(10^-5);
Ca=X*(Cai-Ca0)+Ca0;
mprintf("the concentration is given %f kg mol/m3",Ca)
