clc
clear
//Input data 
T=300;//The given temperature in K 
M=28;//Molecular weight of nitrogen in g 
R=8.3*10^7;//The Universal gas constant in ergs/g mol-K 

//Calculations 
E=(3/2)*R*T;//The total random kinetic energy of nitrogen in ergs 
E1=E/(M*10^7);//The total random kinetic energy of one gram of nitrogen at 300 K in joule 

//Output
printf('The total random kinetic energy of one gram of nitrogen at 300 K is K.E = %3.1f joule ',E1)
