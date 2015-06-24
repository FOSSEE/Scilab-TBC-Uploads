clc;funcprot(0);//EXAMPLE 20.43
// Initialisation of Variables
t1=300;.........//Inlet temperature in K
N=18000;.............//Compressor rpm
etaisen=0.76;.......//Isentropic efficiency
od=0.55;......//Outer diameter of blade tip
sf=0.82;......//Slip factor
cp=1.005;.........//Specific heat capacity at constant pressure in kJ/kgK
ga=1.4;.............//Ratio of specific heats
//Calculations
Cbl2=(%pi*od*N)/60;W=Cbl2*Cbl2*sf/1000;...........//Work done per kg of air in kW
delt=W/cp;..............//Temperature rise of air while passing through compressor 
disp(delt,"Temperature rise of air while passing through compressor :")
t21=(etaisen*delt)+t1;rp=((t21/t1)^(ga/(ga-1)));.....//Pressure ratio
disp(rp,"Pressure ratio:")
