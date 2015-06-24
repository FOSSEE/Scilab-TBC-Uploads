clc;clear;
//Example 17.7

//given data 
T0=800;
P0=1;
Vi=0;//negligible 
At=20;
Mae=2

//from Table A-2a
R=0.287;//in kJ/kg-K
k=1.4;

//calculations

//part - a
// Mach no. at exit is 2 hence sonic conditions at throat
p0=P0*1000/(R*T0);//factor of 1000 to convert MPa to kPa
//from Table A-32 at Mat=1
//s stands for * symbol
Ps0 = 0.5283;//Ts/T0
Ts0 = 0.8333;//Ps/P0
ps0=0.6339;//ps/p0
Ps=Ps0*P0;
Ts=Ts0*T0;
ps=ps0*p0;
As=At;
Vs=sqrt(k*R*Ts*1000);//factor of 1000 to convert kJ to J
disp('the throat conditions');
disp(Ps,'Presssure in MPa');
disp(Ts,'Temperature in K');
disp(ps,'density in kg/m^3');
disp(As,'area in cm^2');
disp(Vs,'velocity in m/s');

//part - b
//from Table A-32
//at Mae=2
Te0 = 0.5556;//Te/T0
Pe0 = 0.1278;//Pe/P0
pe0= 0.2300;//pe/p0
Ae0= 1.6875;//Ae/Ao
Pe=Pe0*P0;
Te=Te0*T0;
pe=pe0*p0;
Ae=Ae0*At;
Ve=Mae*sqrt(k*R*Te*1000);//factor of 1000 to convert kJ to J
disp('the exit plane conditions, including the exit area');
disp(Pe,'Presssure in MPa');
disp(Te,'Temperature in K');
disp(pe,'density in kg/m^3');
disp(Ae,'area in cm^2');
disp(Ve,'velocity in m/s');

//part - c
m=ps*As*Vs/10000;//factor of 10000 to convert cm^2 to m^2
disp(m,'the mass flow rate through the nozzle in kg/s');
