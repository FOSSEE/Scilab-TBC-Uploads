clear;
clc;

disp('We know that n=p=ni where n is conc of free electron p is conc of holes and ni is conc of intrinsic carriers');
//Given data
//Ratio of Conductivities
Nd=4.41*(10^14);//in atoms/cm^3
ni=2.5*(10^13);//in cm^3
yn=3800;//in cm^2/V-s
q=1.6*(10^-19);

n=Nd;
A=n*q*yn;//Conductivity

//If germanium atom were monovalent metal , ratio of conductivity to that of n-type semiconductor

n=4.41*(10^22);//in electrons/cm^3

disp('If germanium atom were monovalent metal');
A1=n*q*yn;
disp('ohm=cm^-1',A1,'the coductivity of metal is=');

F=A1/A;
disp(F,'The factor by which the coductivity of metal is higher than that of n type semiconductor is');

//End