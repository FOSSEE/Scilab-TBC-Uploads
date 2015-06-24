// chapter 14
// example 14.6
// Determine the motor speed
// page-867-868
clear;
clc;
// given
E=240; // in V
alpha1=110; // in degree (triggering angle)
alpha2=50; // in degree
T=1.8; // in Nm (torque)
Ka_phi=1; // in Nm/A (torque motor characteristics)
Ra=6; // in ohm (armature resistance)
// calculate
Em=E*sqrt(2); // calculation of peak voltage
Ia=T/Ka_phi;
VARIABLE=(1/%pi)*Em*integrate('sin(wt)','wt',alpha1*(%pi/180),%pi);
// since Ea=(VARIABLE+Eb*%pi*(alpha1-alpha2)/(%pi*180)) and Eb=Ea-Ia*Ra, putting the value in it, we get
// Eb=VARIABLE+Eb*(alpha1-alpha2)/180)-Ia*Ra, or
// Eb-Eb*(alpha1-alpha2)/180=VARIABLE/%pi-Ia*Ra or
Eb=(VARIABLE-Ia*Ra)/(1-(alpha1-alpha2)/180); // calculation of back emf
w=Eb/Ka_phi; // calculation of motor speed in rad/s
N=w*(60/(2*%pi)); // calculation of motor speed in rpm
printf("\n\nThe motor speed is \t w=%.2f rad/s or \t N=%.f rpm",w,N);