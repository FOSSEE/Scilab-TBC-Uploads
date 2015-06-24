
// example 5-7 in page 135
clc;
//Given data
D=8; C=0; B=2; A=0; //corresponding analog input voltages for the digital input 1-0-1-0
Vi=10;//input voltage in volts
//calculation
Vo=(D+C+B+A)*Vi/16;// output voltage
printf("out put voltage=%.2f V",Vo);
//result
//out put voltage=6.25 V 