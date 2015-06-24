
// Ex7_3

clc;

// Given:
a1=687; // neutron absorption cross section for U 235 in barns
a2=0.66 // neutron absorption cross section for H2O in barns
a3=0.0093; // neutron absorption cross section for D2O in barns
a4=0.0045; // neutron absorption cross section for C in barns

//Solution:

F1=1.07*a1/a2;//design parameter for H2O part(a)
printf("\n The design parameter for H2O is = %f",F1)

F2=1.07*a1/a3;//design parameter for D2O part(b)
printf("\n \n The design parameter for D2O is = %f",F2)

F3=1.07*a1/a4;//design parameter for C part(c)
printf("\n \n The design parameter for C is = %f",F3)
