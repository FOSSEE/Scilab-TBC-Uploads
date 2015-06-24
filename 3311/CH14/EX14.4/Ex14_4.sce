// chapter 14
// example 14.4
// fig. 14.13
// Determine motor torque, speed of the motor, supply power factor, firing angle and power fed back to the supply
// page-865-866
clear;
clc;
// given
HP=10; // in HP (power of motor)
E=210; // in V
N=1000; // in rpm (speed)
Ia=30; // in A (armature current)
Ra=0.25; // in ohm (armature resistance)
Es=230; // in V (supply voltage)
Ka_phi=0.172; // in V/rpm (motor voltage constant)
alpha=45; // in degree
// calculate
Em=Es*sqrt(2); // calculation of peak voltage
// part- (a)
Ka_phi_rad=Ka_phi*(60/(2*%pi)); // changing unit from V/rpm to V/rad/s
T=Ka_phi_rad*Ia; // calculation of motor torque
Ea=(2*Em/%pi)*cosd(alpha); // calculation of armature voltage
Eb=Ea-Ia*Ra; // calculation of back emf
N=Eb/Ka_phi; // calculation of speed
EI=Es*Ia; // calculation of volt-ampere rating
Ps=Ea*Ia; // calculation of supplied power
Pf=Ps/EI; // calculation of power factor
printf("\nThe motor torque is \t\t T=%.1f Nm",T);
printf("\nThe speed of the motor is \t N=%.2f rpm",N);
printf("\nThe supply power factor is \t Pf=%.2f",Pf);
// part  (b)
Ea2=-Eb+Ia*Ra; // calculation of back emf when in regenerative action Here minus sign indicates regenerative action
// since Ea=(2*Em/%pi)*cosd(alpha), therefore we get
alpha2=acosd(Ea2*(%pi/(2*Em))); // calculation of corresponding firing angle
Pg=Eb*Ia; // calculation of power from dc machine
Pr=Ia^2*Ra; // calculation of power lost in armature resistance
Ps=Pg-Pr; // calculation of supplied power
printf("\n\nThe firing angle to keep the motor current at its rated value is \t alpha2=%.2f degree",alpha2);
printf("\nThe fpower fed back from the supply is \t Ps=%.1f W",Ps);
// Note :The answers vary due to precise calculations