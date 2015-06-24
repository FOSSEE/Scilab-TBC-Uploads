//Chapter 2
//Example 2.6
//page 65
//To find mutual inductance between power line and telephone line and voltage induced in telephone line

clear;clc;
D1=sqrt(1.1*1.1+2*2); //from figure 2.14
D2=sqrt(1.9*1.9+2*2);  //from figure 2.14
Mpt=0.921*log10(D2/D1);  //mutual inductance
Vt=abs(%i*2*%pi*50*Mpt*10^(-3)*100);//when 100A is flowing in the power lines

printf("\n\nMutual inductance between power line and telephone line = %f mH/km\n\n",Mpt);
printf("\n\nVoltage induced in the telephone circuit = %.3f V/km\n\n",Vt);