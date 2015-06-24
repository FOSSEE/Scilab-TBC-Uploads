clc
clear

m=2;        //mass in kg
T1=30+273;  //Temperature in K
T2=60+273;  
Cp=4.187;
T=T2/T1;
X=double(log(T));
S=m*Cp*X;
printf('Entropy Change of Water: %1.4f kJ/K',S);
