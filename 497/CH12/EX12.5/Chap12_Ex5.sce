//Kunii D., Levenspiel O., 1991. Fluidization Engineering(II Edition). Butterworth-Heinemann, MA, pp 491

//Chapter-12, Example 5, Page 307
//Title: Conversion in the Freeboard of a Reactor
//==========================================================================================================

clear
clc

//INPUT
uo=0.3;//Superficial gas velocity in m/s
Lf=1.1;//Length of fixed bed in m
Hf=1.2;//Length of freeboard in m
db=0.04;//Equilibrium bubble size in m
umf=0.006;//Velocity at minimum fluidization condition in m/s
ephsilonmf=0.55;//Void fraction at minimum fluidization condition
gammab=0.005;//Ratio of volume of dispersed solids to that of bubble phase
Kr=10;//rate constant in m^3 gas/m^3 cat s
D=2E-5;//Diffusion coefficient of gas in m^2/s
g=9.81;//Acceleration due to gravity in square m/s^2

//CALCULATION
ubr=0.711*(g*db)^0.5;//Rise velocity of bubble from Eqn.(6.7)
ub=uo-umf+ubr;//Velocity of bubbles in bubbling beds in Eqn.(6.8)
Kbc=4.5*(umf/db)+5.85*((D^0.5*g^0.25)/db^(5/4));//Gas interchange coefficient between bubble and cloud from Eqn.(10.27)
Kce=6.77*((D*ephsilonmf*0.711*(g*db)^0.5)/db^3)^0.5;//Gas interchange coefficient between emulsion and cloud from Eqn.(10.34)
delta=uo/ub;//Fraction of bed in bubbles from Eqn.(6.29)
ephsilonf=1-(1-delta)*(1-ephsilonmf);//Void fraction of fixed bed from Eqn.(6.20)
fw=0.6;//Wake volume to bubble volume from Fig.(5.8)
gammac=(1-ephsilonmf)*((3/(ubr*ephsilonmf/umf-1))+fw);//Volume of solids in cloud to that of the bubble from Eqn.(6.36)
gammae=((1-ephsilonmf)*((1-delta)/delta))-gammab-gammac;//Volume of solids in emulsion to that of the bubble from Eqn.(6.35)
Kf=(gammab*Kr)+1/((1/Kbc)+(1/(gammac*Kr+1/((1/Kce)+(1/(gammae*Kr))))));//Raction rate for fluidized bed from Eqn.(14)
XA=1-exp(-1*Kf*Lf/ub);//Conversion at the top of dense bed from Eqn.(16)
etabed=(Kf*delta)/(Kr*(1-ephsilonf));//Reactor efficiency from Eqn.(22)
a=0.6/uo//Since uoa = 0.6s^-1 from Fig.(5)
adash=6.62;//From Fig.(5)
XA1=1-1/(exp(((1-ephsilonf)*Kr/(uo*a))*[(1-exp(-a*Hf))-((1-etabed)/(1+(adash/a)))*(1-exp(-(a+adash)*Hf))]));//Conversion from Eqn.(64)
XA2=1-(1-XA1)*(1-XA);//Conversion at the exit from Eqn.(64)

//OUTPUT
printf('\nThe conversion:');
mprintf('\n\tAt the top pf the dense bed: %f percentage',XA*100);
mprintf('\n\tAt the reactor exit: %f percentage',XA2*100);

//Disclaimer: The value of kf deviate from the one given in textbook, where as it is close to the value obtained by manual calculation. 
//====================================END OF PROGRAM ======================================================