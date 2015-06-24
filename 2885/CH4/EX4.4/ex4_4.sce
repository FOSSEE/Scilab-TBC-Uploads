//determine dynamic input resistance
clear;
clc;
//soltion
//given
Ie=2;//mA
Vcb=10;//V

//Taking points around Ie & Vcb from graph
del_Ie=(2.5-1.5)*10^-3;//A

//corresponding change in Veb
del_Veb=(0.9-0.8);//V
rib=del_Veb/del_Ie;
printf("The dynamic input resistance of transistor is %.0f Ω",rib);
