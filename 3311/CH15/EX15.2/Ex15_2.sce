// chapter 15
// example 15.2
// Determine the angle of firing advance in different cases, voltage ratio and power flow
// page-958-959
clear;
clc;
// given
P=6; // number of poles
f=50; // in Hz
N1=600, N2=800; // in rpm
E=600; // in V open circuit standstill slip-ring voltage
Es=415; // in V (supply voltage)
gama1=10; // in degree (overlap angle in rectifier)
gama2=5; // in degree (overlap angle in invertor)
V_diode=1.5; // in V (voltage drop across SCR)
V_SCR=0.7; // in V (voltage drop across SCR)
alpha=0; // in degree (used by the author in the book)
Pin=100; // assumption as done in the book
// calculate
Ns=(f/P)*120; // calculation of synchronous speed
S1=(Ns-N1)/Ns; // calculation of slip corresponding to N1=600
Er1=N1*S1; // calculation of rotor voltage corresponding to N1=600
Edc1=(P*Er1*sqrt(2)/%pi)*sin(%pi/P); // calculation of dc link voltage corresponding to N1=600
Edc_inv1=Edc1;
Emax=Es*sqrt(2);
// since Edc_inv=(P*Emax/(2*%pi))*sin(%pi/P)*(cos(Beta)+cos(Beta-gama)), and gama=0,  therefore we get
Beta1=(acosd((2*%pi/(P*Emax*sin(%pi/P)))*Edc_inv1/2)); // calculation of angle of firing advance corresponding to N1=600
S2=(Ns-N2)/Ns; // calculation of slip corresponding to N2=800
Er2=N2*S2; // calculation of rotor voltage corresponding to N2=800
Edc2=(P*Er2*sqrt(2)/%pi)*sin(%pi/P); // calculation of dc link voltage corresponding to N2=800
Edc_inv2=Edc2;
// since Edc_inv=(P*Emax/(2*%pi))*sin(%pi/P)*(cos(Beta)+cos(Beta-gama)), and gama=0,  therefore we get
Beta2=(acosd((2*%pi/(P*Emax*sin(%pi/P)))*Edc_inv2/2)); // calculation of angle of firing advance corresponding to N2=800
Edc3=(P*Emax/(2*%pi))*sin(%pi/P)*(cos(alpha)+cos(alpha+gama1))-2*V_SCR;
Beta3=acosd(((2*%pi/(P*Emax*sin(%pi/P)))*(Edc3-2*V_diode))/(2*cosd(gama2/2)))+gama2/2;
K=Es/Er1;
P0_rotor=Pin*S1;
P0_shaft=Pin-P0_rotor;
printf("\n\nThe angle of firing advance corresponding to N1=%.f rpm is \t Beta1=%.1f degree",N1,Beta1);
printf("\nThe angle of firing advance corresponding to N2=%.f rpm is \t Beta2=%.1f degree",N2,Beta2);
printf("\nThe angle of firing advance in overlapping case is \t\t Beta3=%.1f degree",Beta3);
printf("\n\nThe transfromer ratio is \t K=%.2f",K);
printf("\n\nThe power out of the rotor is \t P0_rotor=%.f %% of power input to the stator",P0_rotor);
printf("\nThe shaft output power is \t P0_shaft=%.f %% of power input to the stator",P0_shaft);
// Note: The answer in the book is wrong for Beta3 due to use of wrong values of Emax and gama1 in the calculation. I have used the correct values