//Book - Power system: Analysisi & Design 5th Edition
//Authors - J. Duncan Glover, Mulukutla S. Sarma, and Thomas J.Overbye
//Chapter-3 ;Example 3.2
//Scilab Version - 6.0.0; OS - Windows

clc;
clear;

Srated=20                           //rated input power in kVA
E1rated=480                         //Rated voltage across winding 1 in Volts
E2rated=120                         //Rated voltage across winding 2 in Volts
F=60                                //frequency in Hertz
Sl=15                               //Load power in kVA
pf = 0.8                            //power factor lagging
E2=118                              //Load voltage in Volts
V1s=35                              //Short circuit voltage in Volts
P1=300                              //Short circuit power in Watts
I2=12                               //Open circuit Winding 2 current in Amps
P2=200                              //Open circuit power in Watts

I1rated=(Srated*1000)/E1rated       //Rated current for winding 1
Req1=P1/(I1rated)^2                 //Equivalent resistance of winding 1 in Ohms
Zeqm=abs(V1s/I1rated)               //Magnitude of equivalent impedance of winding 1 in Ohms
Xeq1=sqrt(Zeqm^2-Req1^2)            //Equivalent reactance  of winding 1 in Ohms
Zeq1=Req1+%i*Xeq1                   //Equivalent impedance of winding 1 in Ohms
V1o=E1rated                         //Since winding 1 open circuit voltage is equal to winding 1 rated volgage
Gc=P2/V1o^2
Ymm=abs((E2rated/E1rated)*I2/V1o)
Bm=sqrt(Ymm^2-Gc^2)
Ym=Gc-%i*Bm                         //Shunt admittance in Siemens

printf('The rated current for winding 1 is %.4f Ampere\n',I1rated);
printf('The Equivalent resistance of winding 1 is %.4f Ohms\n',Req1);
printf('The Equivalent reactance  of winding 1 is %.4f Ohms\n',Xeq1);
printf('The magnitude of Equivalent impedance of winding 1 is %.4f Ohms and its angle is %.4f degree\n',abs(Zeq1),atand(imag(Zeq1),real(Zeq1)));
printf('The magnitude of Shunt admittance is %.4f Siemens and its angle is %.4f degree \n',abs(Ym),atand(imag(Ym),real(Ym)));
