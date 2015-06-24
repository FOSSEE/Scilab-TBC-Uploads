// chapter 14
// example 14.3
// Compute the field current, firing angle of the convertor and the input power factor
// page-864-865
clear;
clc;
// given
E=230; // in V
f=50; // in Hz
La=0.06; // in H (armature inductance)
Ra=0.3; // in ohm (armature resistance)
Ka=0.9; // in V/A rad/s (motor voltage constant)
Rf=104; // in ohm (field resistance)
T_L=50; // in Nm (load torque)
N=800; // in rpm (speed)
alpha0=0; // in radian (firing angle for maximum field voltage)
// calculate
Em=E*sqrt(2); // calculation of peak voltage
Ef=(Em/%pi)*(1+cos(alpha0)); // calculation of maximum field voltage
If=Ef/Rf; // calculation of field current
Ia=T_L/(Ka*If); // calculation of armature current
w=N*(2*%pi/60); // calculation of angular speed
Eb=Ka*w*If; // calculation of back emf
Ea=Eb+Ia*Ra; // calculation of armature voltage
// since Ea=(Em/%pi)*(1+cos(alpha)), therefore we get
alpha=acosd(Ea*(%pi/Em)-1); // calculation of firing angle
P0=Ea*Ia; // calculation of output power
Pa=P0; // calculation of power from supply
Irms=sqrt((2/(2*%pi))*Ia^2*integrate('1','wt',alpha*(%pi/180),%pi)); // calculation of rms current
EI=E*Irms; // calculation of volt-ampere rating
Pf=Pa/(EI); // calculation of power factor
printf("\nThe field current is \t\t\t If=%.2f A",If);
printf("\nThe firing angle of the convertor is \t alpha=%.f degree",alpha);
printf("\nThe power factor is \t\t\t Pf=%.2f",Pf);
if Pf>0 then
    printf(" (lagging)");
else
    printf(" (leading)");
end