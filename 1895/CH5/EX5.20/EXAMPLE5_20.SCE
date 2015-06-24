//ANALOG AND DIGITAL COMMUNICATION
//BY Dr.SANJAY SHARMA
//CHAPTER 5
//ANGLE MODULATION
clear all;
clc;

printf("EXAMPLE 5.20(PAGENO 232)");
//given
g_m = 10*10^-3//transconductance 
n = 8
f= 5*10^6//operating frequency

//calculation
X_Ceq = n/g_m//capacitive reactance

//result
printf("\n\nCapacitive reactance = %.2f ohms",X_Ceq)
