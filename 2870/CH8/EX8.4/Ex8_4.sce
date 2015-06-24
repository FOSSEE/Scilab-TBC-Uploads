clc;clear;
//Example 8.4

//given data
m=500;
T1=473;
T0=300;
Wu=0;

//from Table A-3
cavg=0.45;

//calculations
Wrev=integrate('(1-T0/T)*(-m*cavg)','T',T1,T0);//intergrant
Wrev=floor(Wrev);
disp(Wrev,'The reversible power in kJ');
I=Wrev-Wu;
disp(I,'the irreversiblity rate in kJ');
