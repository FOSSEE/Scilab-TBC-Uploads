//Exa 9.4
clc;
clear;
close;
//given data
//for the given IC LM317: 
Iadj=100;//in micro amperes
Vref=1.25;//in volts
R1=240;//in ohms
//(i) For Vo=2 volts
//on solving equation Vo=Vref(1+R2/R1)+R2*Iadj
Vo=2;//in volts
R2=(Vo-Vref)/((Vref/R1)+Iadj*10^-6);
disp(R2,"for Output 2 volts the requires value of resistance R2(in ohms) : ")
//(i) For Vo=12 volts
Vo1=12;//in volts
//on solving equation Vo=Vref(1+R2/R1)+R2*Iadj
R21=(Vo1-Vref)/(Vref/R1+Iadj*10^-6);
disp(R21,"for Output 12 volts the requires value of resistance R2(in ohms) : ")
//use potentiometer for adjustable value
disp("Hence use 3kohm potentiometer to set R2.")