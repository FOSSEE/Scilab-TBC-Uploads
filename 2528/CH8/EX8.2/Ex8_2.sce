// Chapter8
// Page.No-264
// Example8_2
// Figure 8.4
// Power dissipation for Q1
// Page.No-264
// Example_8_2
// Figure 8.4
// Given
clear;clc;
Vl=11.7;            //in V
Rl=20;           //in Ohm
Il=Vl/Rl;
printf("\n Output Load Current Il is = %.3f A \n",Il); // Result
Vc=20; Ve=11.7;     //in V
Vce=Vc-Ve;
printf("\n Output Load Voltage Vce is = %.2f V\n",Vce); // Result
Pd=Il*Vce;
printf("\n Power dissiption Pd is = %.2f W \n",Pd); // Result
Ib=0.020;                   //in Amp
B=Il/Ib;
printf("\n Beta is = %.2f  \n",B); // Result
Pl=Il*Vl;
printf("\n Power dissiption across load ,Pl is = %.3f W \n",Pl); // Result
Vin=20;             //in V
Pin=Il*Vin;         //Iin=Il
printf("\n Input Power dissiption ,Pin is = %.2f W \n",Pin); // Result
n=Pl/Pin;
printf("\n Efficiency   is = %.3f or %.1f  percent \n",n,n*100); // Result
