// chapter 14
// example 14.7
// Determine the triggering angle of the convertor 
// page-868
clear;
clc;
// given
P=80; // in kW (power rating of motor)
E=440; // in V
N1=800; // in rpm
N2=600; // in rpm
neta=75; // in % (% torque with respect to rated torque)
Eb1=410; // in V (back emf)
Eac=415; // in V (three-phase input)
// calculate
P=P*1E3; // changing unit from kW to W
Em=sqrt(2/3)*Eac; // calculation of peak value of input voltage
// since Eb1/Eb2=N1/N2, therefore we get
Eb2=Eb1*(N2/N1); // calculation of back emf corresponding to N2=600 rpm
Ia=P/E; // calculation of armature current
// since Eb1=E-Ia*Ra, therefore we get
Ra=(E-Eb1)/Ia; // calculation of armature resistance
Ea=Eb2+((neta/100)*Ia*Ra); // calculation of armature volage
// since Ea=(3*sqrt(3)/%pi)*Em*cosd(alpha), therefore we get
alpha=acosd((Ea/Em)*(%pi/(3*sqrt(3)))); // calculation of triggering angle of the convertor 
printf("\n\nThe triggering angle of the convertor  is \t alpha=%.2f rdegree",alpha);
// Note: The answer varies slightly due to precise calculations