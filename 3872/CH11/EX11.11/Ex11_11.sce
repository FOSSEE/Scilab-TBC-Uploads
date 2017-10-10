//Book - Power system: Analysisi & Design 5th Edition
//Authors - J. Duncan Glover, Mulukutla S. Sarma, and Thomas J.Overbye
//Chapter-11 ;Example 11.11
//Scilab Version - 6.0.0; OS - Windows

clc;
clear;

f=60                                            //genertor frequency
H=0.9                                           //Inertia constant in per unit-seconds
Ra=0.013 
Xa=0.067                                        //leakage reactance
Xm=3.8
R1=0.0124
X1=0.17
S=-0.0111                                       //slip
Ert=0.9314
Eit=0.4117
Ir=0.7974
Ii=0.6586

Xt=Xa+((X1*Xm)/(X1+Xm));                        //transient reactance
X=Xa+Xm;                                        //synchronous reactance
omega=2*%pi*f;
Tot=((X1+Xm)/(omega*R1));                       //open circuit time constant for the rotor

Vr=Ert-(Ra*Ir)+(Xt*Ii);
Vi=Eit-(Ra*Ii)-(Xt*Ir);
dErt=(omega*S*Eit)-((1/Tot)*(Ert-(X-Xt)*Ii));
dEit=(-(omega)*S*Ert)-((1/Tot)*(Eit+(X-Xt)*Ir));
Pe=(Vr*Ir+Vi*Ii);                               //The terminal real power injection
Qe=(-Vr*Ii+Vi*Ir);                               //The reactive power produced by the machine 

printf('The transient reactance is:%.4fi per unit\n',Xt);
printf('The synchronous reactance is:%.4fi per unit\n',X);
printf('The open circuit time constant for the rotor is:%.4fi per unit\n',Tot);
printf('The terminal real power injection is:%.4f per unit\n',Pe);
printf('The terminal reactive power injection is:%.4f per unit\n',Qe);





