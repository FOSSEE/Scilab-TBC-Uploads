// chapter 14
// example 14.8
// Determine no load speeds, firing angle, supply power factor and the speed regulation
// page-868-870
clear;
clc;
// given
P=150; // in HP (power rating of motor)
E0=650; // in V (voltgae rating of motor)
N1=1750; // in rpm
Eac=460; // in V (three-phase input)
Ia=170; // in A (rated armature current)
Ra=0.099; // in ohm (armature resistance)
La=0.73; // in mH (armature inductance)
Ka_phi=0.33; // in V/rpm (motor voltage constant)
alpha1=0, alpha2=30; // in degrees (firing angle)
neta=10; // in % (armature current at no load as a percentage of rated armature current)
// calculate
E=Eac/sqrt(3);
Em=E*sqrt(2);
Ea1=(3*sqrt(3)/%pi)*Em*cosd(alpha1);
Eb1=Ea1-Ia*Ra;
N_NL1=Eb1/Ka_phi;
Ea2=(3*sqrt(3)/%pi)*Em*cosd(alpha2);
Eb2=Ea2-Ia*Ra;
N_NL2=Eb2/Ka_phi;
Eb3=Ka_phi*N1;
Ea3=Eb3+Ia*Ra;
// since Ea=(3*sqrt(3)/%pi)*Em*cosd(alpha), therefore we get
alpha3=acosd((Ea3/Em)*(%pi/(3*sqrt(3))));
I_A=sqrt((1/%pi)*Ia^2*(2*%pi/3));
VA=3*E*I_A;
Ps=Ea3*Ia;
PF=Ps/VA;
Eb4=Ea3-((neta/100)*Ia*Ra);
N_NL3=Eb4/Ka_phi;
SR=((N_NL3-N1)/N1)*100;
printf("\nThe no load speeds are");
printf("\n\t\t\t For alpha=%.f degree, N_NL= %.2f rpm",alpha1,N_NL1);
printf("\n\t\t\t For alpha=%.f degree, N_NL= %.2f rpm",alpha2,N_NL2);
printf("\n\nThe firing angle to obtain a speed of N=%.f rpm is \t alpha= %.2f degree",N1,alpha3);
printf("\nThe supply power factor is \t\t\t\t PF= %.2f",PF);
printf("\nThe speed regulation is \t\t\t\t\t SR= %.2f %%",SR);
// Note: The answer varies slightly due to precise calculations