clear;
clc;

disp('We know that n=p=ni where n is conc of free electron p is conc of holes and ni is conc of intrinsic carriers');
//Given data
//Resistivity if 1 donor atom per 10^8 germanium atoms
Nd=4.41*(10^14);//in atoms/cm^3
ni=2.5*(10^13);//in cm^3
yn=3800;//in cm^2/V-s
q=1.6*(10^-19);

n=Nd;
p=(ni^2)/Nd;

disp('holes/cm^3',p,'the concentration of holes is=');
if(n>p)
    A=n*q*yn;//Conductivity
    disp('ohm-cm^-1',A,'The conductivity is =');
end

R=1/A;//Resistivity
disp('ohm-cm',R,'The resistivity is=');


//End