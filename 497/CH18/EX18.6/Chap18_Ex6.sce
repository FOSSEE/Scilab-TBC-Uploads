//Kunii D., Levenspiel O., 1991. Fluidization Engineering(II Edition). Butterworth-Heinemann, MA, pp 491

//Chapter-18, Example 5, Page 471
//Title: Design of a Roaster for Coarse Ore
//==========================================================================================================

clear
clc

//INPUT
T=900;//Temperature in roaster in degree C
P=101325;//Pressure in Pa
R=8.314;//Universal gas constant
dp=750;//Particle size in micrometer5
Fo=2.5;//Feed rate of solids in kg/s
uo=0.6;//Superficial gas velocity in m/s
W=80140;//Weight of bed in kg
ephsilonmf=0.50;//Void fraction at minimum fluidized condition
umf=0.5;//Velocity at minimum fluidization condition in m/s
db=0.2;//Estimated bubble size in m
g=9.81;//Acceleration due to gravity in square m/s^2
Lm=1;//Length of fixed bed in m
ephsilonm=0.45;//Void fraction of fixed bed
xA=0.21;//Mole fraction of oxygen in feed
kc=0.015//Rate constant in m/s for reaction which follows shrinking core model
Ds=8E-6;//Diffusion coefficient of solid in m^2/s
rhosbar=4130;//Average particle density in kg/m^3
mB=0.09744;//Molecular weight of ZnS
a=3/2;//Stoichiometric coefficient of Oxygen in the reaction equation

//CALCULATION
//Selection of models to represent reactor
ubr=0.711*(g*db)^0.5;//Rise velocity of bubble from Eqn.(6.7)
f=ubr/(umf/ephsilonmf);

//Step 1.
ub=uo-umf+ubr;//Rise velocity of bubbles from Eqn.(6.8)
delta=(uo-umf)/(ub+2*umf);//Fraction of the bed in bubbles from Eqn.(6.26)
Krguess=2;//Guess value of Kr
x=Lm*(1-ephsilonm)*umf*(1-delta)/uo^2;
CAi=xA*P/(R*(T+273));//Initial concentration of oxygen

//Step 2.
kbar=(kc^-1+(dp*10^-6/(12*Ds))^-1)^-1;//Modified rate constant from Eqn.(11)
tbar=W/Fo;//Mean residence time of solids from Eqn.(14.2)
rhob=rhosbar/mB;//Density of ZnS
function[fn]=solver_func1(Kr)//Function defined for solving the system
    XA=1-exp(-x*Kr);//Conversion from Eqn.(42)
    CAbar=(CAi*XA*uo^2)/(Kr*Lm*(1-ephsilonm)*umf*(1-delta));//Average concentration of oxygen from Eqn.(43)
    tou=rhob*dp*10^-6*a/(2*kbar*CAbar);//Time for complete reaction from Eqn.(9)
    y=tbar/tou;//Term tbar/tou
    XBbar=3*y-6*y^2+6*y^3*(1-exp(-1/y));//Average conversion of ZnS from Eqn.(22)
    //Step 3.
    fn=XBbar-1.2*XA;//From Table E5, for Fo=2.5kg/s
endfunction
[Kr]=fsolve(Krguess,solver_func1,1E-6);//Using inbuilt function fsolve for solving for Kr
XA=1-exp(-x*Kr);//Conversion from Eqn.(42)
CAbar=(CAi*XA*uo^2)/(Kr*Lm*(1-ephsilonm)*umf*(1-delta))//Average concentration of oxygen from Eqn.(43)
tou=rhob*dp*10^-6*a/(2*kbar*CAbar);//Time for complete reaction from Eqn.(9)
y=tbar/tou;//Term tbar/tou
XBbar=3*y-6*y^2+6*y^3*(1-exp(-1/y));//Average conversion of ZnS from Eqn.(22)

//OUTPUT
printf('\nSelection of models to represent reactor');
printf('\n\tSince ratio ubr/(umf/ephsilonmf)= %f <1, the reactor is operating in slow bubble regime',f);
printf('\n\tSince particle size =%f micrometer, they react according to shrinking-core model',dp);
printf('\n\tConversion obtained for %f micrometer particle:%f',dp,XBbar);

//====================================END OF PROGRAM ======================================================