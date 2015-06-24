clc;funcprot(0);//EXAMPLE 3.39
// Initialisation of Variables
etat=0.85;..............//Turbine efficiency
etac=0.8;...............//Compressor efficiency
t3=1148;................//Max temperature in K
t1=300;................//Temperature of working fluid when entering the compressor in Kelvin
cp=1;...................//specific heat at constant pressure in kJ/kgK
ga=1.4;................//ratio of specific heats
p1=1;...................//Pressure of working fluid while entering the compressor in bar
rp=4;...................//Pressure ratio
C=42000;...............//Calorific value of fuel used in kJ/kgK
perlcc=10;.............//Percentage loss of calorific value in combustion chamber
//calculations
p2=p1*rp;.................//pressure of air while leaving the compressor in bar
etacc=1-(perlcc/100);............//efficiency of combustion chamber
t2=t1*(rp^((ga-1)/ga));...........//Ideal Temperature of air while leaviing the compressor in K
t21=((t2-t1)/etac)+t1;............//Actual Temperature of air while leaviing the compressor in K
afr=((C*etacc)/(cp*(t3-t21)))-1;...........//Air fuel ratio
printf("Air fuel ratio is %d:1",round(afr))
