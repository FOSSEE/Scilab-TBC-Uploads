//Kunii D., Levenspiel O., 1991. Fluidization Engineering(II Edition). Butterworth-Heinemann, MA, pp 491

//Chapter-7, Example 6, Page 190
//Title: Entrainment from a Short Vessel Ht<TDH
//==========================================================================================================
clear
clc

//INPUT
dpbar=60;//Average size of particles in micrometer
rhog=1.3;//Density of gas in kg/m^3
rhos=1500;//Density of solid in kg/m^3
umf=0.003;//Velocity at minimum fluidization condition in m/s
uo=0.503;//Superficial gas velocity in m/s
g=9.80;//Acceleration due to gravity in m/s^2
Hf=2;//Height at which the cyclone inlet is to be located in m

//CALCULATION
y=(uo^2)/(g*(dpbar*10^-3)*rhos^2);//Calculation of value of y-axis for Fig.(6), page 175
x=1;//Value of x-axis from Fig.(6), page 175
Gsstar=x*rhog*uo;//Computation of rate of entrainment
Gsuo=5.0;//Ejection rate pf particles in kg/m^2 s from Fig.(11), page 188
a=0.72/uo;//From Fig.(12), page 189
Gs=Gsstar+(Gsuo-Gsstar)*exp(-a*Hf);
p=((Gs-Gsstar)/Gsstar)*100;

//OUTPUT
mprintf('\nRate of entrainment from short bed=%fkg/m^2s',Gs);
mprintf('\nThis entrainment is %f percent higher than it would be if the gas exit were at the TDH',p);

//====================================END OF PROGRAM ====================================================