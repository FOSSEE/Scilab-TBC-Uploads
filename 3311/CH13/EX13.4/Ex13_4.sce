// chapter 13
// example 13.4
// fig. 13.13
// Compute initial capacitor voltage, magnetizing current and capacitor value to limit the transient capcaitor voltage to Ep=330 V
// page-809-810
clear;
clc;
// given
Es=140; // in V
f=50; // in Hz
Lm=3; // in mH
theta=180; // in degree
Ep=330; // in V 
// calculate
Lm=Lm*1E-3; // changing unit from mH to H
Em=sqrt(2)*Es; // calculation of peak voltage
Vc_0=Em*sind(theta); // calculation of initial capacitor voltage
w=2*%pi*f; // calculation of angular frequency
Im=(-Em/(w*Lm))*cosd(theta); // calculation of magnetizing current 
C=Im*Em/(Ep^2*w); // calculation of capacitor value to limit the transient capcaitor voltage
printf("\nThe initial capacitor voltage is \t\t\t\t\t\t Vc_0= %.f V",abs(Vc_0));
printf("\nThe magnetizing current is \t\t\t\t\t\t\t Im= %.f A",Im);
printf("\nThe capacitor value to limit the transient capcaitor voltage to Ep=%.f V is \t C= %.1f uF",Ep,C*1E6);
// Note :The answer vary slightly due to precise calculation