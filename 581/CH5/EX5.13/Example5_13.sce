
clear;
clc;

printf("\t Example 5.13\n");

T1=373; // temperature of iron rod,K
T2=293; // temperature of coolant,K

//Biot no., Bi1=Bi2=0.2105,Fo1=Fo2=0.565 
a1=0.10;
a2=0.10;

a=a1+a2*(1-a1);

T=(T1-T2)*(1-a)+T2;   //mean temperature,K
Ta=T-273;
printf("\t mean temperature is : %.1f C\n",Ta);
//end