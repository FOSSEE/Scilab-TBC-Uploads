//Book - Power system: Analysisi & Design 5th Edition
//Authors - J. Duncan Glover, Mulukutla S. Sarma, and Thomas J.Overbye
//Chapter-11 ;Example 11.3
//Scilab Version - 6.0.0; OS - Windows

clc;
clear;

P=1.0                                           //Infinite bus received real power in per unit
Vbus=1.0                                        //Infinite bus voltage in per unit
pf=0.95                                         //Lagging power factor
Xdt=0.30
XTR=0.10
X12=0.20
X13=0.10
X23=0.20

Xeq=Xdt+XTR+(X12*(X13+X23))/(X12+(X13+X23));    //The equialent reactance between the machine internal voltage and infinite bus in per unit
theta=acos(pf);
I=(P/(Vbus*pf))*exp(-%i*theta);                 //Current into the infinite bus in per unit
Ei=Vbus+(%i*Xeq)*I;                             //The machine internal voltage in per unit

printf('The magnitude of he machine internal voltage in per unit is %.4f pu and its angle is  %.4f degrees',abs(Ei),atand(imag(Ei),real(Ei)));

