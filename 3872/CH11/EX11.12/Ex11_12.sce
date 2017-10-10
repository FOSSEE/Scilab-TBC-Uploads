//Book - Power system: Analysisi & Design 5th Edition
//Authors - J. Duncan Glover, Mulukutla S. Sarma, and Thomas J.Overbye
//Chapter-11 ;Example 11.12
//Scilab Version - 6.0.0; OS - Windows

clc;
clear;


Vr=1.0                                      //system voltage in per unit
I=1.0                                       //terminal current
pf=1                                        //Lagging power factor
X=%i*0.22
Xeq=0.8                                     //DFAG reactance in per unit



VT=Vr+I*X                                   //Terminal voltage
Isorc=I+(VT/(%i*Xeq))                       //current injection on the network reference in per unit
Isorcpq=Isorc*(1*exp(%i*-12.41*%pi/180))    //The value of Ip and Iq are then calculated by shifting these values backwards by the angle of the terminal voltage
Iq=-1.495                                   //reactive power current current
Eq=-Iq*Xeq                                  //The reactive voltage


printf('The magnitude of terminal voltage in per unit is :%.4f and its angle is :%.4f degrees\n',abs(VT),atand(imag(VT),real(VT)));
printf('The generator output current is:%.4f%.4fi per unit\n',real(Isorc),imag(Isorc));
printf('The current injection on the network reference is:%.4f%.4fi per unit\n',real(Isorcpq),imag(Isorcpq));
printf('The reactive voltage is:%.4f per unit\n',Eq);
