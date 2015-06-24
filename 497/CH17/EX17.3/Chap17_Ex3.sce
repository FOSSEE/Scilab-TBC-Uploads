//Kunii D., Levenspiel O., 1991. Fluidization Engineering(II Edition). Butterworth-Heinemann, MA, pp 491

//Chapter-17, Example 3, Page 444
//Title: Reactor-Regenerator with Circulating Catalyst: Catalytic Cracking
//==========================================================================================================

clear
clc

//INPUT
db=0.08;//Estimated bubble size in m
dte=2;//Equivalent diameter in m
F1=55.6;//Feed rate of oil in kg/s
XA=0.63;//Conversion
uo=0.6;//Superficial gas velocity in m/s
T1=500;//Temperature of reactor in degree C
T2=580;//Temperature of regenerator in degree C
Fs=F1*23.3;//Solid circulation rate from Ex.(15.2)
rhos=1200;//Density of catalyst in kg/m^3
dpbar=60;//Average particle size in micrometer
ephsilonm=0.50;//Void fraction of fixed bed
ephsilonmf=0.55;//Void fraction at minimum fluidized condition
umf=0.006;////Velocity at minimum fluidization condition in m/s
dt=8;//Diameter of reactor in m
D=2E-5;//Diffusion coefficient of gas in m^2/s
Kr=8.6;//Rate constant for reaction at 500 degree C in s^-1
Ka1=0.06;//Rate constant for deactivatiion at 500 degree C in s^-1
Ka2=0.012;//Rate constant for regeneration at 580 degree C in s^-1
gammab=0.005;//Ratio of volume of dispersed solids to that of bubble phase
g=9.81;//Acceleration due to gravity in square m/s^2
pi=3.14;

//CALCULATION
//Parameters for the fluidized reactor
ubr=0.711*(g*db)^0.5;//Rise velocity of bubble from Eqn.(6.7)
ub=1.55*{(uo-umf)+14.1*(db+0.005)}*dte^0.32+ubr;//Bubble velocity for Geldart A particles from Equation from Eqn.(6.11)
delta=uo/ub;//Fraction of bed in bubbles from Eqn.(6.29)
ephsilonf=1-(1-delta)*(1-ephsilonmf);//Void fraction of fixed bed from Eqn.(6.20)
fw=0.6;//Wake volume to bubble volume from Fig.(5.8)
gammac=(1-ephsilonmf)*((3/(ubr*ephsilonmf/umf-1))+fw);//Volume of solids in cloud to that of the bubble from Eqn.(6.36)
gammae=((1-ephsilonmf)*((1-delta)/delta))-gammab-gammac;//Volume of solids in emulsion to that of the bubble from Eqn.(6.35)
Kbc=4.5*(umf/db)+5.85*((D^0.5*g^0.25)/db^(5/4));//Gas interchange coefficient between bubble and cloud from Eqn.(10.27)
Kce=6.77*((D*ephsilonmf*0.711*(g*db)^0.5)/db^3)^0.5;//Gas interchange coefficient between emulsion and cloud from Eqn.(10.34)

//Bed height versus catalyst activity in reactor
a1bar=0.07;//Guess value for average activity in reactor
x=Kr*a1bar;//Value of Kra1 to be used in the following equation
Kf=(gammab*x+1/((1/Kbc)+(1/(gammac*x+1/((1/Kce)+(1/(gammae*x)))))))*(delta/(1-ephsilonf));//Effective rate constant from Eqn.(12.14)
tou=-log(1-XA)/Kf;//Space time from Eqn.(12.16)
Lm=tou*uo/(1-ephsilonm);//Length of fixed bed for guess value of a1bar
a1bar1=[0.0233;0.0465;0.0698;0.0930;0.116;0.140];//Various activity values to find Lm
n=length(a1bar1);
i=1;
while i<=n
    x1(i)=Kr*a1bar1(i);
    Kf1(i)=(gammab*x1(i)+1/((1/Kbc)+(1/(gammac*x1(i)+1/((1/Kce)+(1/(gammae*x1(i))))))))*(delta/(1-ephsilonf));//Effective rate constant from Eqn.(12.14)
    tou1(i)=-log(1-XA)/Kf1(i);//Space time from Eqn.(12.16)
    Lm1(i)=tou1(i)*uo/(1-ephsilonm);//Length of fixed bed for guess value of a1bar...Condition (i)
    i=i+1;
end

//Find the optimum size ratio for various a1bar
Lm=[5;6;7;8;10;12];
m=length(Lm);
i=1;
while i<=m
    W1(i)=(pi/4)*dt^2*rhos*(1-ephsilonm)*Lm(i);//Bed weight
    t1bar(i)=W1(i)/Fs;//Mean residence time of solids in reactor
    t2bar(i)=t1bar(i)*(Ka1/Ka2)^0.5;//Mean residence time of soilds at optimum from Eqn.(16)
    a1bar2(i)=(Ka2*t2bar(i))/(Ka1*t1bar(i)+Ka1*t1bar(i)*Ka2*t2bar(i)+Ka2*t2bar(i));//From Eqn.(15)...Condition (ii)
    i=i+1;
end

//Final design values
Lm4=7.3;//For satisfying condition (i) & (ii)
a1bar3=0.0744;//By interpolation
x2=a1bar3*Kr;
W11=(pi/4)*dt^2*rhos*(1-ephsilonm)*Lm4;//Bed weight for reactor
t1bar1=W11/Fs;//Mean residence time of solids in reactor
a2bar=(1+Ka1*t1bar1)*a1bar3;//Average activity in regenrator from Eqn.(10)
t2bar1=t1bar1*(Ka1/Ka2)^0.5;//Mean residence time of solids in regenerator from Eqn.(16)
W2=W11*(t2bar1/t1bar1);//Bed weight for regenerator
dt2=dt*(W2/W11)^0.5;//Diameter of regenerator assuming same static bed height for reactor and regerator

//OUTPUT
printf('\nBed height versus catalyst activity in reactor');
printf('\n\tAverage activity');
printf('\tLength of fixed bed(m)');
i=1;
while i<=n
    mprintf('\n\t%f',a1bar1(i));
    mprintf('\t\t%f',Lm1(i));
    i=i+1;
end
printf('\nOptimum size ratio for various activity in reactor');
printf('\n\tLength of fixed bed(m)');
printf('\tAverage activity');
i=1;
while i<=m
    mprintf('\n\t%f',Lm(i));
    mprintf('\t\t%f',a1bar2(i));
    i=i+1;
end
printf('\nFinal design values');
printf('\n\tDiameter of reactor(m):%f',dt);
printf('\n\tBed weight for reactor(tons):%f',W11/10^3);
printf('\n\tBed weight for regenerator(tons):%f',W2/10^3);
printf('\n\tDiameter of regenerator(m):%f',dt2);
printf('\n\tSolid circulation rate(tons/hr):%f',Fs*3.6);

//====================================END OF PROGRAM ======================================================