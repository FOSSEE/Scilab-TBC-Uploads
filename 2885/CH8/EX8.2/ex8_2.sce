
//Determine power and voltage gain
clear;
clc;
//soltion
//given

//For  Gain = 10 dB
G=10;//dB
Pg1=10^(G/10);       //taking antilog
Vg1=10^(G/20);       //taking antilog
printf("\nFor Gain = %.0f dB",G)
printf("\nPower gain ratio = %.0f \n",Pg1);
printf("Voltage gain ratio = %.2f \n",Vg1);

//For Gain 3 dB
G=3;//dB
Pg2=10^(G/10);       //taking antilog
Vg2=10^(G/20);       //taking antilog
printf("\nFor Gain = %.0f dB\n",G)
printf("Power gain ratio = %.0f \n",Pg2);
printf("Voltage gain ratio = %.3f \n",Vg2);
