//determine dynamic input resistance and dc and ac current gain
clear;
clc;
//soltion
//given
Ib=30*10^-6;//A
Vce=10;//V
Ic=3.6*10^-3;//A        //from graph

//Taking points around Vce = 10V from graph
del_Vce=(12.5-7.5);//V

//corresponding change in ic
del_ic=(3.7-3.5)*10^-3;//A

roe=del_Vce/del_ic;
printf("The dynamic output resistance of transistor is %.0f kΩ\n",roe/1000);

//dc current gain
Bo=Ic/Ib;
printf("The dc current gain is %.0f\n",Bo);

//ac current gain

del_ic=(4.7-2.5)*10^-3;    //the collector current change is from 3.5mA to 4.7mA as we can see from graph when we change ib from 40mA to 20mA
del_ib=(40-20)*10^-6;
B=del_ic/del_ib;
printf("The ac current gain is %.0f\n",B);
