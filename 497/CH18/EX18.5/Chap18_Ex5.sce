//Kunii D., Levenspiel O., 1991. Fluidization Engineering(II Edition). Butterworth-Heinemann, MA, pp 491

//Chapter-18, Example 5, Page 468
//Title: Design of a Roaster for Finely Ground Ore
//==========================================================================================================

clear
clc

//INPUT
T=900;//Temperature in roaster in degree C
P=101325;//Pressure in Pa
R=8.314;//Universal gas constant
dpbar=150;//Average particle size in micrometer
rhosbar=4130;//Average particle density in kg/m^3
kc=0.015//Rate constant in m/s for reaction which follows shrinking core model
Ds=8E-6;//Diffusion coefficient of solid in m^2/s
uo=0.6;//Superficial gas velocity in m/s
D=2.3E-4;//Diffusion coefficient of gas in m^2/s
Lm=1;//Length of fixed bed in m
dte=0.4;//Equivalent diameter of bed
umf=0.025;//Velocity at minimum fluidization condition in m/s
ephsilonm=0.45;//Void fraction of fixed bed
ephsilonmf=0.50;//Void fraction at minimum fluidized condition
db=0.2;//Estimated bubble size in m
gammab=0.005;//Ratio of volume of dispersed solids to that of bubble phase
Fo=2;//Feed rate of solids in kg/s
XA=0.6677;//Conversion of Oxygen
xA=0.21;//Mole fraction of oxygen in feed
mB=0.09744;//Molecular weight of ZnS
F=0.85;//Fraction of open area
g=9.81;//Acceleration due to gravity in square m/s^2
pi=3.14;

//CALCULATION
//(a)Extreme Calculation
a=3/2;//Stoichiometric coefficient of Oxygen in the reaction equation
At=(Fo/mB)*(a)/(uo*(273/(T+273))*(XA*xA)/0.0224);
dt=sqrt(At/F*4/pi);

//(b)The Three-Step Procedure
//Step 1. Conversion of gas
ubr=0.711*(g*db)^0.5;//Rise velocity of bubble from Eqn.(6.7)
ub=1.6*{(uo-umf)+1.13*db^0.5}*dte^1.35+ubr;//Bubble rise velocity for Geldart B particle
delta=uo/ub;//Fraction of bed in bubbles from Eqn.(6.29)
ephsilonf=1-(1-delta)*(1-ephsilonmf);//Void fraction of fixed bed from Eqn.(6.20)
fw=0.15;//Wake volume to bubble volume from Fig.(5.8)
gammac=(1-ephsilonmf)*((3/(ubr*ephsilonmf/umf-1))+fw);//Volume of solids in cloud to that of the bubble from Eqn.(6.36)
gammae=((1-ephsilonmf)*((1-delta)/delta))-gammab-gammac;//Volume of solids in emulsion to that of the bubble from Eqn.(6.35)
Kbc=4.5*(umf/db)+5.85*((D^0.5*g^0.25)/db^(5/4));//Gas interchange coefficient between bubble and cloud from Eqn.(10.27)
Kce=6.77*((D*ephsilonmf*0.711*(g*db)^0.5)/db^3)^0.5;//Gas interchange coefficient between emulsion and cloud from Eqn.(10.34)
x=delta*Lm*(1-ephsilonm)/((1-ephsilonf)*uo);//Term Lf/ub of Eqn.(12.16) from Eqn.(6.19)
CAi=xA*P/(R*(T+273));//Initial concentration of oxygen

//Step 2.Conversion of solids
rhob=rhosbar/mB;//Density of ZnS
kbar=(kc^-1+(dpbar*10^-6/(12*Ds))^-1)^-1;//Modified rate constant from Eqn.(11)
tbar=At*Lm*(1-ephsilonm)*rhosbar/Fo;//Mean residence time of solids
Krguess=2;//Guess value of Kr
function[fn]=solver_func(Kr)//Function defined for solving the system
    Kf=gammab*Kr+1/((1/Kbc)+(1/(gammac*Kr+1/((1/Kce)+(1/(gammae*Kr))))));//Reaction rate for fluidized bed from Eqn.(14)
    XA=1-exp(-x*Kf);//Conversion of oxygen from Eqn.(42)
    CAbar=(CAi*XA*uo)/(Kr*Lm*(1-ephsilonm));//Average concentration of oxygen from Eqn.(43)
    tou=rhob*dpbar*10^-6*a/(2*kbar*CAbar);//Time for complete reaction from Eqn.(9)
    y=tbar/tou;//Term tbar/tou
    XBbar=3*y-6*y^2+6*y^3*(1-exp(-1/y));//Average conversion of ZnS from Eqn.(22)
    //Step 3. Material balance of both streams
    fn=(Fo/mB)*XBbar-(At*uo*CAi*XA/a);//From Eqn.(44b)
endfunction
[Kr]=fsolve(Krguess,solver_func,1E-6);//Using inbuilt function fsolve for solving for Kr
Kf=gammab*Kr+1/((1/Kbc)+(1/(gammac*Kr+1/((1/Kce)+(1/(gammae*Kr))))));//Reaction rate for fluidized bed from Eqn.(14)
XA=1-exp(-x*Kf);//Conversion of oxygen from Eqn.(42)
CAbar=(CAi*XA*uo)/(Kr*Lm*(1-ephsilonmf));//Average concentration of oxygen from Eqn.(43)
tou=rhob*dpbar*10^-6*a/(2*kbar*CAbar);//Time for complete reaction from Eqn.(9)
y=tbar/tou;//Term tbar/tou
XBbar=3*y-6*y^2+6*y^3*(1-exp(-1/y));//Average conversion of ZnS from Eqn.(22)


//(c) For other feed rates of solids
F1=[2;2.5;3;3.5];//Various feed rates of solids in kg/s
n=length(F1)
i=1;
Krguess1=2;//Guess value of Kr
while i<=n
    tbar1(i)=At*Lm*(1-ephsilonm)*rhosbar/F1(i);//Mean residence time of solids
    function[fn]=solver_func1(Kr)//Function defined for solving the system
        Kf1=gammab*Kr+1/((1/Kbc)+(1/(gammac*Kr+1/((1/Kce)+(1/(gammae*Kr))))));//Reaction rate for fluidized bed from Eqn.(14)
        XA1=1-exp(-x*Kf1);//Conversion of oxygen from Eqn.(42)
        CAbar1=(CAi*XA1*uo)/(Kr*Lm*(1-ephsilonm));//Average concentration of oxygen from Eqn.(43)
        tou1=rhob*dpbar*10^-6*a/(2*kbar*CAbar1);//Time for complete reaction from Eqn.(9)
        y1(i)=tbar1(i)/tou1;//Term tbar/tou
        XBbar1(i)=3*y1(i)-6*y1(i)^2+6*y1(i)^3*(1-exp(-1/y1(i)));//Average conversion of ZnS from Eqn.(22)
        //Step 3. Material balance of both streams
        fn=(F1(i)/mB)*XBbar1(i)-(At*uo*CAi*XA1/a);//From Eqn.(44b)
    endfunction
    [Kr1(i)]=fsolve(Krguess1,solver_func1,1E-6);//Using inbuilt function fsolve for solving Eqn.(23) for tou
    Kf1(i)=gammab*Kr1(i)+1/((1/Kbc)+(1/(gammac*Kr1(i)+1/((1/Kce)+(1/(gammae*Kr1(i)))))));//Reaction rate for fluidized bed from Eqn.(14)
    XA1(i)=1-exp(-x*Kf1(i));//Conversion of oxygen from Eqn.(42)
    CAbar1(i)=(CAi*XA1(i)*uo)/(Kr1(i)*Lm*(1-ephsilonmf));//Average concentration of oxygen from Eqn.(43)
    tou1(i)=rhob*dpbar*10^-6*a/(2*kbar*CAbar1(i));//Time for complete reaction from Eqn.(9)
    y1(i)=tbar1(i)/tou1(i);//Term tbar/tou
    XBbar1(i)=3*y1(i)-6*y1(i)^2+6*y1(i)^3*(1-exp(-1/y1(i)));//Average conversion of ZnS from Eqn.(22)
    i=i+1;
end

//OUTPUT
printf('\nExtreme Calculation');
printf('\n\tDiameter of tube with all its internals:%fm',dt);
printf('\nThree step procedure');
printf('\n\tConversion of ZnS:%f',XBbar);
printf('\nFor other feed rates of solids');
printf('\n\tFeed(kg/s)\ttbar(s)\t\tXBbar/XA\tKrbar(s^-1)\tCAbar/CAi\ttou(s)\t\tXA\t\tXB');
i=1;
while i<=n
    mprintf('\n\t%f\t%f\t%f\t%f\t%f\t%f\t%f\t%f',F1(i),tbar1(i),XBbar1(i)/XA1(i),Kr1(i),CAbar1(i)/CAi,tou1(i),XA1(i),XBbar1(i));
    i=i+1;
end

//====================================END OF PROGRAM ======================================================