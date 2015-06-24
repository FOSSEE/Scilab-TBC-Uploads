//Kunii D., Levenspiel O., 1991. Fluidization Engineering(II Edition). Butterworth-Heinemann, MA, pp 491

//Chapter-12, Example 3, Page 302
//Title: Bubbling Bed Reactor for Intermediate Sized Reactor
//==========================================================================================================

clear
clc

//INPUT
Kr=3;//rate constant in m^3 gas/m^3 cat s
db=0.12;//Equilibrium bubble size in m
D=9E-5;//Diffusion coefficient of gas in m^2/s
dpbar=68;//Average partilce size in micrometers
ephsilonm=0.42;//Void fraction of fixed bed
uo=0.4;//Superficial gas velocity in m/s
Lm=0.8;//Length of the bed in m
ephsilonmf=0.45;//Void fraction at minimum fluidization condition
umf=0.21;//Velocity at minimum fluidization condition in m/s
gammab=0;//Ratio of volume of dispersed solids to that of bubble phase
g=9.81;//Acceleration due to gravity in square m/s^2

//CALCULATION
ubr=0.711*(g*db)^0.5;//Rise velocity of bubble from Eqn.(6.7)
ub=uo-umf+ubr;//Velocity of bubbles in bubbling beds in Eqn.(6.8)
ubstar=ub+3*umf;//Rise velocity of the bubble gas from Eqn.(45)
delta=(uo-umf)/(ub+umf);//Fraction of bed in bubbles from Eqn.(6.46)
Kbe=4.5*(umf/db);//Interchange coefficient between bubble and emulsion from Eqn.(47)
Lf=Lm*(1-ephsilonm)/((1-delta)*(1-ephsilonmf));//Length of fixed bed
phi=[(Kr/Kbe)^2*{(1-ephsilonmf)-gammab*(umf/ubstar)}^2+((delta/(1-delta))+umf/ubstar)^2+2*(Kr/Kbe)*{(1-ephsilonmf)-gammab*(umf/ubstar)}*((delta/(1-delta))-umf/ubstar)]^0.5;//From Eqn.(52)
q1=0.5*Kr/umf*{(1-ephsilonmf)+gammab*(umf/ubstar)}+0.5*Kbe/umf*{((delta/(1-delta))+umf/ubstar)-phi};//From Eqn.(50)
q2=0.5*Kr/umf*{(1-ephsilonmf)+gammab*(umf/ubstar)}+0.5*Kbe/umf*{((delta/(1-delta))+umf/ubstar)+phi};//From Eqn.(50)
si1=0.5-0.5*((1-delta)/delta)*[umf/ubstar-Kr/Kbe*{(1-ephsilonmf)-gammab*(umf/ubstar)}-phi];//From Eqn.(51)
si2=0.5-0.5*((1-delta)/delta)*[umf/ubstar-Kr/Kbe*{(1-ephsilonmf)-gammab*(umf/ubstar)}+phi];//From Eqn.(51)
XA=1-(delta/(1-delta))*(1/(uo*phi))*[(1-si2)*{si1*delta*ubstar+(1-delta)*umf}*exp(-q1*Lf)+(si1-1)*{si2*delta*ubstar+(1-delta)*umf}*exp(-q2*Lf)];//Conversion from Eqn.(49)
Krtou=Kr*Lm*(1-ephsilonm)/uo;//Dimensionless reaction rate group from Eqn.(5)

//OUTPUT
mprintf('\nCOmparing the values of 1-XA = %f and Krtou = %f with Fig.(6), we can conlcude that this operating condition is shown as point A in Fig.(3)',1-XA,Krtou);
printf('\nLine 2 gives the locus of conversions for different values of the reaction rate group for this fluidized contacting');

//====================================END OF PROGRAM ======================================================