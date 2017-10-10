//Book name: Fundamentals of electrical drives by Mohamad A. El- Sharkawi
//chapter 5
//example 5.5
//edition 1
//publisher and place:Nelson Engineering
clc;
clear;
P=40;                              //load of an industrial plant in Mw
pf=.85;                           //power factor lagging
pfnew=.95                        //To improve new power factor
V=5000;                         //motor rated voltage in volts
Xs=5;                            //synchronous reactance in ohm
c=200;                          //constant value given
Vt=V/3^(1/2);
a=acosd(pf);                 //power factor angle of the load in degree
Ql=P*tand(a);                 //load reactive power in KVAR
Qtot=P*tand(acosd(pfnew));     //total reactive power for .95 power factor lagging
disp(Qtot,'The total reactive power for .95 power factor lagging in KVAR is')
Qm=Qtot-Ql;
Vt=(V/sqrt(3));
Ef=((Qm*Xs)/(3*Vt))+Vt;
If=Ef/c;
disp(If,'The excitation current required to improve overall power factor of the plant in A is')
