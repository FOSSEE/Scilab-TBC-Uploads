//Example 14.3
//Program to Design the Universal Shunt for making Multi-Range //Milliammeter with Range 0-1 mA,0-100 mA,0-500 mA,0-1 A
clear;
clc ;
close ;
//Given Circuit Data
CS=100*10^(-6); //A
R=100; //Ohms
Rm=900; //Ohms
//(a)Calculation
Imax1=1*10^(-3); //A
Rsh=CS*R/(Imax1-CS);
Rm1=Rm;
Ish1=Imax1-CS;
Rsh1=Rm1*CS/Ish1;
//(b)Calculation
Imax2=10*10^(-3); //A
Ish2=Imax2-CS;
R1=(R*Ish2-Rm*CS)/(Ish2-CS);
//(c)Calculation
Imax3=100*10^(-3); //A
Ish3=Imax3-CS;
R2=((R-R1)*Ish3-Rm*CS)/(Ish3-CS);
//(d)Calculation
Imax4=500*10^(-3); //A
Ish4=Imax4-CS;
R3=((R-R1-R2)*Ish4-Rm*CS)/(Ish4-CS);
//(e)Calculation
Imax5=1; //A
Ish5=Imax5-CS;
R4=((R-R1-R2-R3)*Ish5-Rm*CS)/(Ish5-CS);
R5=R-R1-R2-R3-R4;
//Displaying The Results in Command Window
printf("\n\t Shunt Resistance          , Rsh = %f Ohms .",Rsh);
printf("\n\t For Range switch at 1 mA  , Rsh1 = %f Ohms .",Rsh1);
printf("\n\t For Range switch at 10 mA , R1 = %f Ohms .",R1);
printf("\n\t For Range switch at 100 mA, R2 = %f Ohms .",R2);
printf("\n\t For Range switch at 500 mA, R3 = %f Ohms .",R3);
printf("\n\t For Range switch at 1 A   , R4 = %f Ohms .",R4);
printf("\n\t\t\t           R5 = %f Ohms .",R5);