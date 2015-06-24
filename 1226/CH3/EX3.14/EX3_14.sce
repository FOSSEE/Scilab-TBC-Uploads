clc;funcprot(0);//EXAMPLE 3.14
// Initialisation of Variables
t1=310;................//Min temperature in K
t3=1220;................//Max temperature in K
ga=1.4;................//Ratio of specific heats for air
cph=5.22;............//Specific heat at constant volume for helium in kJ/kg
cvh=3.13;...............//Specific heat at constant pressure for helium in kJ/kg
//Calculations 
r=(t3/t1)^(1/((ga-1)*2));..............//Compression ratio
etaotto=1-(1/(r^(ga-1)));................//Air standard efficiency
gah=cph/cvh;................//Ratio of specific heats for Helium
rh=(t3/t1)^(1/((gah-1)*2));..............//Compression ratio when Helium is used
etaottoh=1-(1/(rh^(gah-1)));................//Air standard efficiency when Helium is used
disp(etaotto*100,"Air standard efficiency of the engine in %:")
if ((round (etaotto)- round (etaottoh)) == 0) then disp("There is no change in efficiency when Helium is used as working fluid instead of air")
end
