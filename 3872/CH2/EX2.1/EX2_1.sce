//Book - Power System: Analysis & Design 5th Edition
//Authors - J. Duncan Glover, Mulukutla S. Sarma, and Thomas J. Overbye
//Chapter - 2 ; Example 2.1
//Scilab Version - 6.0.0 ; OS - Windows

clc;
clear;
Vmax=141.4;                        //Peak source voltage in Volts
R=10;                              //Load resistance in Ohms
Xl=3.77;                           //Inductive reactance in Ohms
Vrms=Vmax/sqrt(2);                 //RMS value of source voltage in Volts
Ir=Vrms/(R);                       //Current through the resistor in Amperes
Il=Vrms/(%i*Xl);                   //Current through the inductor in Amperes
Iload=Ir+Il;                       //Current through the load in Amperes
wt=0:0.1:2*%pi;
v=Vmax*cos(wt);                    //Instantaneous voltage in Volts
ir=Vmax*cos(wt)/R;                 //Instantaneous current through the resistor in Amperes
il=Vmax*cos(wt+90*%pi/180);        //Instantaneous current through the inductor in Amperes
Pr=Vrms*Ir*(1+cos(2*wt));          //Instantaneous Power absorbed by Resistor in Watts
Pl=Vrms*abs(Il)*sin(2*wt);         //Instantaneous Power absorbed by Inductor in Watts
del=0;
bet=atan(imag(Iload),real(Iload));
P=Vrms*abs(Iload)*cos(del-bet);    //Real power absorbed by the load in Watts
Q=Vrms*abs(Iload)*sin(del-bet);    //Reactive power absorbed by the load in VAR
pf=cos(del-bet);                   //Power factor
clf;                               //To clear figures from previous programs
subplot(231);
plot(wt,v);
xtitle('Input Voltage','Angular displacement','Voltage(Volts)');
subplot(232);
plot(wt,ir);
xtitle('Current through resistor','Angular displacement','Current(Amp.)');
subplot(233);
plot(wt,Pr);
xtitle('Power dissipated in resistor','Angular displacement','Power(Watts)');
subplot(236);
xtitle('Power throgh the inductor','Angular displacement','Power(VAR)');
plot(wt,Pl);
subplot(234);
plot(wt,v);
xtitle('Input Voltage','Angular displacement','Voltage(Volts)');
subplot(235);
plot(wt,il);
xtitle('Current through inductor','Angular displacement','Current(Amp.)');
printf('\nThe Real power absorbed by the load is %d Watts\n',P);
printf('The Reactive power absorbed by the load is %d VAR\n',Q);
printf('The Power factor is %.4f lagging',pf);
