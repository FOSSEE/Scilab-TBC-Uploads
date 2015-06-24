//chapter 5
//example 5.11
//page 441
clear;
clc;
disp("example 5.11");
printf("\n");
disp("field exitation current=10A");
V_oc=900;      //induced emf on open circuit
I_sc=150;      //short circuit current
Z_s=V_oc/I_sc; //synchronous impedence
printf("synchronous impedence,Z_s= %d ohm\n",Z_s);
I_a=60;
printf("internal voltage drop when the load current is 60amp=  %d V",(I_a*Z_s));