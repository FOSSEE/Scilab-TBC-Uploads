//Kunii D., Levenspiel O., 1991. Fluidization Engineering(II Edition). Butterworth-Heinemann, MA, pp 491

//Chapter-12, Example 1, Page 293
//Title: Fine Particle (Geldart A) Bubbling Bed Reactor
//==========================================================================================================

clear
clc

//INPUT
Kr=10;//rate constant in m^3 gas/m^3 cat s
D=2E-5;//Diffusion coefficient of gas in m^2/s
dpbar=68;//Average partilce size in micrometers
ephsilonm=0.5;//Void fraction of fixed bed
gammab=0.005;//Ratio of volume of dispersed solids to that of bubble phase
ephsilonmf=0.55;//Void fraction at minimum fluidization condition
umf=0.006;//Velocity at minimum fluidization condition in m/s
db=0.04;//Equilibrium bubble size in m
Lm=0.7;//Length of the bed in m
uo=0.1;//Superficial gas velocity in m/s
dbed=0.26;//Diameter of the bed in m
g=9.81;//Acceleration due to gravity in square m/s^2

//CALCULATION
ubr=0.711*(g*db)^0.5;//Rise velocity of bubble from Eqn.(6.7)
ub=uo-umf+ubr;//Velocity of bubbles in bubbling beds in Eqn.(6.8)
Kbc=4.5*(umf/db)+5.85*((D^0.5*g^0.25)/db^(5/4));//Gas interchange coefficient between bubble and cloud from Eqn.(10.27)
Kce=6.77*((D*ephsilonmf*0.711*(g*db)^0.5)/db^3)^0.5;//Gas interchange coefficient between emulsion and cloud from Eqn.(10.34)
delta=uo/ub;//Fraction of bed in bubbles from Eqn.(6.29)
fw=0.6;//Wake volume to bubble volume from Fig.(5.8)
gammac=(1-ephsilonmf)*((3/(ubr*ephsilonmf/umf-1))+fw);//Volume of solids in cloud to that of the bubble from Eqn.(6.36)
gammae=((1-ephsilonmf)*((1-delta)/delta))-gammab-gammac;//Volume of solids in emulsion to that of the bubble from Eqn.(6.35)
ephsilonf=1-(1-delta)*(1-ephsilonmf);//Void fraction of fixed bed from Eqn.(6.20)
Lf=(1-ephsilonm)*Lm/(1-ephsilonf);//Length of fixed bed from Eqn.(6.19)
Krtou=Kr*Lm*(1-ephsilonm)/uo;//Dimensionless reaction rate group from Eqn.(5)
Kf=gammab*Kr+1/((1/Kbc)+(1/(gammac*Kr+1/((1/Kce)+(1/(gammae*Kr))))));//Raction rate for fluidized bed from Eqn.(14)
XA=1-exp(-1*Kf*Lf/ub);//Conversion from Eqn.(16)

//OUTPUT
mprintf('\nThe dimnesionless reaction rate group: %f',Krtou);
mprintf('\nThe reaction rate for fluidized bed: %fs^-1',Kf);
mprintf('\nConversion: %f',XA);

//====================================END OF PROGRAM ======================================================