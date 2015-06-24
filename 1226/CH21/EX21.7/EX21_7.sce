clc;funcprot(0);//EXAMPLE 21.7
// Initialisation of Variables
ma=20;..............//Air flow rate in kg/s
t1=300;........//Temperature of air entering the turbine in K
t3=1000;............//Temperature before expansion in turbine in K
rp=4;...............//Pressure ratio
cp=1;.............//Specific heat at constant pressure in kJ/kgK 
ga=1.4;........//Ratio of specific heats
//Calculations
t2=t1*((rp)^((ga-1)/ga));...............//Temperature of air after compression in K
t4=t3-t2+t1;............//Temperature after expansion in turbine in K
prlp=rp/((t3/t4)^(ga/(ga-1)));.............//Pressure ratio of low pressure turbine
disp(prlp,"Pressure ratio of low pressure turbine:")
t5=t4/((prlp)^((ga-1)/ga));............//Temperature of the exhaust from the unit in K
disp(t5,"Temperature of the exhaust from the unit in K:")

