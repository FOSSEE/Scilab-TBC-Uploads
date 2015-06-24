
clear;
clc;

printf("\t Example 3.5\n");

T1=313; //entering temperature of cold water, K
T2=423; //Entering temperature of hot water, K
Cc=20000; //heat capacity of cold water, W/K
Ch=10000; //heat capacity of hot water, W/K
A=30; //area, m^2
U=500; //overall heat transfer coefficient, w/(m^2*K)
e=0.596; // no. of transfer units(NTU)=(U*A)/Ch=1.5, the effectiveness of heat exchanger e can be found by using this value of NTU

Q=e*Ch*(T2-T1);
Q1=Q/1000
printf("\t heat transfer is :%.1f KW\n",Q1);

Texh=T2-Q/Ch;
Tn1=Texh-273;
printf("\t the exit hot water temperature is:%.2f C\n",Tn1);

Texc=T1+Q/Cc
Tn2=Texc-273;
printf("\t the exit cold water temperature is : %.2f C\n",Tn2);

//End