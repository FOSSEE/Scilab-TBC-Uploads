//Exa 8.4
clc;
clear;
close;
//given data :

disp("Each cell supplies 50 mA at 0.45V. Allowing for the voltage drop across the rectifier and series resistor, a maximum output voltage of approximately 28V is required. Thus,  ");
disp("n = Vout/Vcell");
Vout=28;//in Volts
Vcell=0.45;//in Volt
n=Vout/Vcell;//Unitless
disp(n,"No. of series connected- cells = ");
disp("the charge taken from the batteries over a period of 24 hour is 24*0.5 =  12 Ah. thus, the charge delivered by the solar cells must be 12 ampere Hours");
disp("Since the solar cells are illuminated only 12 hours a day, the necessary charging current from the solar cell is 12Ah/12h i.e. 1 A");
Iout=1;//in A
Icell=50;//in mA
m=Iout/(Icell*10^-3);//unitless
disp(m,"Hence total no. of group of cells in parallel, m ");
disp(round(m*n),"The total no. of cells required : ");
//Note : Answer in the book is wrong.