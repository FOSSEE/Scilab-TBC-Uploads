// chapter 6
// example 6.26
// fig. 6.72
// Determine overlap angles
// page-370-371
clear;
clc;
// given
Em=120; // in V
f=50; // supply frequency
L=0.33; // in mH
Id=4; // in A (load current)
alpha=15; // in degree (firing angle)
// calculate
L=L*1E-3; // changing unit from mH to H
// since Id=(Em/(2*%pi*f*L))*(1-cosd(u)) therefore we get
u1=acosd(1-Id*(2*%pi*f*L/Em)); // calclation of overlap angle for case I
u2=acosd(cosd(alpha)-Id*(2*%pi*f*L/Em))-alpha; // calclation of overlap angle for case II
printf("\nThe overlap angle for transfer of current from a conducting thyristor to the commutating diode is \t u1=%.3f degree",u1);
printf("\nThe overlap angle for transfer of current from  the commutating diode to a thyristoris \t\t\t u2=%.3f degree",u2);
// Note: The answers for u1 and u2 vary slightly due to precise calculation upto 6 decimal digit