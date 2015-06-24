// chapter 8
// example 8.21
// fig. 8.32
// Compute the inductance, steady-state speed and current swing
// page-499-500
clear;
clc;
// given
di_a=6; // in A
n=1750; // in rpm (rated speed of motor)
HP=150; // in HP (horse power rating)
Ra=0.0099; // in ohm (armature resistance)
Eff=90; // in percent
Ea=1200; // in V (armature voltage)
Edc=Ea;
T=2500; // in us (chopping period)
alpha=0.10; // duty cycle
L1=125; // in mH
// calculate
T=T*1E-6; // changing unit from us to s
// since dIa/d(alpha)=(Edc/L)*T*(1-2*alpha), and dIa/d(alpha)=0 therefore we get
// 1-2*alpha_worst=0
alpha_worst=1/2; // calculation of duty cycle for worst case of motor
// since di_a=(Edc-alpha_worst*Edc)/L, therefore we get
L=(Edc-alpha_worst*Edc)/di_a*alpha_worst*T; // calculation of inductance
Pin=HP*746/(Eff/100); // calculation of power input to the motor
Ia=Pin/Edc; // calculation of rated current in the armature
Ea_rated=Edc-Ia*Ra; // calculation of armature voltage under rated torque
Va=alpha*Edc-Ia*Ra; // calculation of voltage at the armature
N=(Va/Ea_rated)*n; // calculation of steady-state speed
del_i_a=(Edc-alpha*Edc)/L*alpha*T; // calculation of current swing
printf("\nThe inductance is \t\t L=%.f mH",L*1E3);
printf("\nThe steady-state speed is \t N=%.2f rpm",N);
printf("\nThe current swing is \t\t del_i_a=%.2f A",del_i_a);
// Note: the answers vary slightly due to precise calculation