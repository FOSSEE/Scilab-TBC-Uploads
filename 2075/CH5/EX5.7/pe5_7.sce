//example 5.7
clc; funcprot(0);
// Initialization of Variable
Vi=350;//voltage
f=100;//frequency
Rf=10000;//resistance
Ri=520;
//calculation
Vp=(1+(Rf/Ri))*Vi*2^.5;
disp(Vp/1000,"load voltage in V:")
clear()
