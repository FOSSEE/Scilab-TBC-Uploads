//Book - Power system: Analysisi & Design 5th Edition
//Authors - J. Duncan Glover, Mulukutla S. Sarma, and Thomas J.Overbye
//Chapter-11 ;Example 11.10
//Scilab Version - 6.0.0; OS - Windows

clc;
clear;

P=1.0                                                           //Infinite bus received real power in per unit
Vbus=1.0                                                        //Infinite bus voltage in per unit
Vr=1.0                                                          //system voltage in per unit
pf=0.95                                                         //Lagging power factor
Ra=0                                                            //Machine resistance in per unit
Xd=2.1                                                          //direct axis reactance in per unit
Xq=2.0                                                          //qadrature axis reactance in per unit
Xdt=0.3                                                         //direct axis transient reactance in per unit
Xqt=0.5                                                         //qadrature axis transient reactance in per unit
X=%i*0.22

theta=acos(pf);
I=(P/(Vbus*pf))*exp(-%i*theta);                                 //generator output current in per unit
VT=Vr+X*I                                                       //genertor terminal voltage in per unit
Ireal=1                                                         //generator real output current in per unit
Iimag=-0.3287                                                   //Generator imaginary output voltage in per unit
Vreal=1.0723                                                    //generator real terminal voltage in per unit
Vimag=0.220                                                     //Generator imaginary terminal voltage 
Ei=VT+(%i*Xq)*I                                                 //Steady state angle of internal voltage in per unitge
del=52.1*%pi/180
Vdq=[sin(del) -cos(del);cos(del) sin(del)]*[Vreal;Vimag];       //d-q reference voltage
Idq=[sin(del) -cos(del);cos(del) sin(del)]*[Ireal;Iimag];       //d-q reference current
Eqs=Vdq(2)+Xdt*Idq(1)                                                   //Quadrature axis transient voltage
Eds=Vdq(1)-Xqt*Idq(2)                                                   //Direct axis transient voltage
Efd=Eqs+(Xd-Xdt)*Idq(1)                                             //field voltage

printf('The generator output current is %.4f%.4fi per unit\n',real(I),imag(I));
printf('The genertor terminal voltage is %.4f+%.4fi per unit\n',real(VT),imag(VT));
printf('The magnitude of Steady state angle of internal voltage in per unit is %.4f and its angle is %.4f degrees\n',abs(Ei),atand(imag(Ei),real(Ei)));
disp(Vdq,'The d-q reference voltage in per unit is');
disp(Idq,'The d-q reference current in per unit is');
printf('The Quadrature axis transient voltage is %.4f per unit\n',Eqs);
printf('The Direct axis transient voltage is %.4f per unit\n',Eds);
printf('The field voltage is %.4f per unit\n',Efd);





