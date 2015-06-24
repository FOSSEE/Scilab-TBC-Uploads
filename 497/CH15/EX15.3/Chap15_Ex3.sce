//Kunii D., Levenspiel O., 1991. Fluidization Engineering(II Edition). Butterworth-Heinemann, MA, pp 491

//Chapter-15, Example 3, Page 379
//Title: Aeration of Fine Particle Downcomer
//==========================================================================================================

clear
clc

//INPUT
Fs=100;//Solid flowrate in kg/s
ephsilon1=0.55;
ephsilon2=0.5;
p1=120;//Pressure at upper level in kPa
rhos=1000;//Density of solid in kg/m^3
rhog=1;//Density of gas in kg/m^3
gc=1;//Conversion factor
g=9.81;//Acceleration due to gravity in m/s^2
di=0.34;//Diameter of downcomer in m
pi=3.14;

//CALCULATION
x=(ephsilon1/ephsilon2)*((1-ephsilon2)/(1-ephsilon1));//To find pressure at lower level using Eqn.(30)
p2=x*p1;//Pressure at lower level using Eqn.(30)
deltap=p2-p1;
ephsilonbar=0.5*(ephsilon1+ephsilon2);
deltah=(deltap*10^3*gc)/(rhos*(1-ephsilonbar)*g);//Static head height from Eqn.(28)
At=0.25*pi*di^2;//Area of downcomer
Gs=Fs/At;//Flux of solids in downcomer
Gg=Gs*(ephsilon1/(1-ephsilon1))*(rhog/rhos)*(x-1);//Required gas aeration rate from Eqn.(31)
Fg=Gg*At;//Flow rate of gas required

//OUTPUT
mprintf('\nThe required flow rate of gas required for location of %fm below downcomer is %fkg/s',deltah,Fg);

//====================================END OF PROGRAM ======================================================