//Kunii D., Levenspiel O., 1991. Fluidization Engineering(II Edition). Butterworth-Heinemann, MA, pp 491

//Chapter-12, Example 2, Page 298
//Title: Commercial-Sized Phthalic Anhydride Reactor
//==========================================================================================================

clear
clc

//INPUT
umf=0.005;//Velocity at minimum fluidization condition in m/s
ephsilonm=0.52;//Void fraction of fixed bed
ephsilonmf=0.57;//Void fraction at minimum fluidization condition
DA=8.1E-6;//Diffusion coefficient of gas in m^2/s
DR=8.4E-6;//Diffusion coefficient of gas in m^2/s
Lm=5;//Length of the bed in m
dte=1;//Diameter of tube in m
Kr1=1.5;//rate constant in m^3 gas/m^3 cat s
Kr3=0.01;//rate constant in m^3 gas/m^3 cat s
gammab=0.005;//Ratio of volume of dispersed solids to that of bubble phase
uo=0.45;//Superficial gas velocity in m/s
db=0.05;//Equilibrium bubble size in m from Fig.(6.8)
ub=1.5;//Velocity of bubbles in bubbling bed in m/s from Fig.(6.11(a))
g=9.81;//Acceleration due to gravity in square m/s^2

//CALCULATION
ubr=0.711*(g*db)^0.5;//Rise velocity of bubble from Eqn.(6.7)
KbcA=4.5*(umf/db)+5.85*((DA^0.5*g^0.25)/db^(5/4));//Gas interchange coefficient between bubble and cloud from Eqn.(10.27)
KceA=6.77*((DA*ephsilonmf*0.711*(g*db)^0.5)/db^3)^0.5;//Gas interchange coefficient between emulsion and cloud from Eqn.(10.34)
KbcR=4.5*(umf/db)+5.85*((DR^0.5*g^0.25)/db^(5/4));//Gas interchange coefficient between bubble and cloud from Eqn.(10.27)
KceR=6.77*((DR*ephsilonmf*0.711*(g*db)^0.5)/db^3)^0.5;//Gas interchange coefficient between emulsion and cloud from Eqn.(10.34)
delta=uo/ub;//Fraction of bed in bubbles from Eqn.(6.29)
fw=0.6;//Wake volume to bubble volume from Fig.(5.8)
gammac=(1-ephsilonmf)*((3/(ubr*ephsilonmf/umf-1))+fw);//Volume of solids in cloud to that of the bubble from Eqn.(6.36)
gammae=((1-ephsilonmf)*((1-delta)/delta))-gammab-gammac;//Volume of solids in emulsion to that of the bubble from Eqn.(6.35)
ephsilonf=1-(1-delta)*(1-ephsilonmf);//Void fraction of fixed bed from Eqn.(6.20)
Lf=(1-ephsilonm)*Lm/(1-ephsilonf);//Length of fixed bed from Eqn.(6.19)
Krtou=Kr1*Lm*(1-ephsilonm)/uo;//Dimensionless reaction rate group from Eqn.(5)
Kr12=Kr1;//Since the reactions are a special case of Denbigh scheme
Kr34=Kr3;
Kf1=(gammab*Kr12+1/((1/KbcA)+(1/(gammac*Kr12+1/((1/KceA)+(1/(gammae*Kr12)))))))*(delta/(1-ephsilonf));//Rate of reaction 1 for fluidized bed from Eqn.(14)
Kf3=(gammab*Kr34+1/((1/KbcR)+(1/(gammac*Kr34+1/((1/KceR)+(1/(gammae*Kr34)))))))*(delta/(1-ephsilonf));//Rate of reaction 2 for fluidized bed from Eqn.(14)
Kf12=Kf1;
Kf34=Kf3;
KfA=[[KbcR*KceA/gammac^2+(Kr12+KceA/gammac+KceA/gammae)*(Kr34+KceR/gammac+KceR/gammae)]*delta*KbcA*Kr12*Kr34/(1-ephsilonf)]/[[(Kr12+KbcA/gammac)*(Kr12+KceA/gammae)+Kr12*KceA/gammac]*[(Kr34+KbcR/gammac)*(Kr34+KceR/gammae)+Kr34*KceR/gammac]];//Rate of raection with respect to A from Eqn.(35)
KfAR=Kr1/Kr12*Kf12-KfA;//Rate of reaction from Eqn.(34)
tou=Lf*(1-ephsilonf)/uo;//Residence time from Eqn.(5)
XA=1-exp(-Kf1*tou);//Conversion of A from Eqn.(26)
XR=1-((KfAR/(Kf12-Kf34))*[exp(-Kf34*tou)-exp(-Kf12*tou)]);//Conversion of R from Eqn.(27)
SR=(1-XR)/XA;//Selectivity of R

//OUTPUT

mprintf('\nRate of reaction 1 for fluidized bed:%f',Kf1);
mprintf('\nRate of reaction 2 for fluidized bed:%f',Kf3);
mprintf('\nRate of reaction 1 with respect to A:%f',KfA);
mprintf('\nThe Conversion of Napthalene:%f percentage',XA*100);
mprintf('\nThe selectivity of Phthalic anhydride:%f percentage',SR*100);

//====================================END OF PROGRAM ======================================================