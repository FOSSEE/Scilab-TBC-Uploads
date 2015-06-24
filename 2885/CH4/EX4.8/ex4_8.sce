//determine dynamic input resistance
clear;
clc;
//soltion
//given
Vbe=0.75;//V
Vce=2;//V

//Taking points around Vbe=0.75V from graph
del_Vbe=(0.98-0.9);//V

//corresponding change in ib
del_ib=(68-48)*10^-6;//A

rie=del_Vbe/del_ib;
printf("The dynamic input resistance of transistor is %.0f kΩ",rie/1000);
