clc
clear
//Input data 
T=300;//The given temperature in K 
R=8.3*10^7;//The Universal gas constant in ergs/g mol-K 

//Calculations 
E=((3/2)*(R*T))/10^7;//The total random kinetic energy per gram -molecule of oxygen in joules 

//Output 
printf('The total random kinetic energy of one gm-molecule of oxygen at 300 K is K.E = %3.0f joules',E)
