clc;funcprot(0);//EXAMPLE 20.49
// Initialisation of Variables
ma=20;..........//Air flow rate in kg/s
p1=1;.........//Inlet stagnation pressure in bar
t1=290;.........//Inlet stagnation temperature in Kelvin
t2=305;.........//Temperature at the end of first stage in K
etapc=0.88;.....//Polytropic efficiency of compression
P=4350;......//Power consumed by compressor in kW
ga=1.4;.....//Ratio of specific heats
cp=1.005;......//Specific heat at constant pressure 
//Calculations
p2byp1=(%e^(etapc*log(t2/t1)))^(ga/(ga-1));
tN=(P/(ma*cp))+t1;
pN=p1*((tN/t1)^((etapc*ga)/(ga-1)));......//Delivery pressure in bar
disp(pN,"Delivery pressure in bar:")
N=log(pN/p1)/log(p2byp1);...........//No of stages 
disp(round(N),"No of stages:")
tN1=t1*((pN/p1)^((ga-1)/ga));
etao=(tN1-t1)/(tN-t1);...............//Overall efficiency
disp(etao*100,"Overall efficiency in %:")

