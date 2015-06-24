clear
clc
w1=1;//amount of glucose C6H12O6 in gm
w2=1;//amount of sucrose C12H12022 in gm
n=(w1/180)+(w2/342);//amount of solute
R=8.314;//in J/Kmol
T=25;//in C
V=1000;//volume of water in gm
P=(n*R*(T+273))/(V*10^-6);//osmotic pressure of solution
printf('P=%.3f *10^4 N/m^2',P/10^4) 
w=(w1+w2);//weight of solute
M=(w*R*(T+273))/(P*(V*10^-3));//molar mass of solute
printf('\nM=%.4f kg/mol',M)
Mn=((w1*10^-3)+(w2*10^-3))/(n);//average molar mass in Kg/mol
printf('\nMn=%.4f kg/mol',Mn)

//page 67
