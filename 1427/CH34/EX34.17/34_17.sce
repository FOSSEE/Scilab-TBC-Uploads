//ques-34.17
//Calculating quantum yield of a reaction
clc
w=440;//wavelength (in nm)
I=1.5*10^-3;//intensity of light (in J/s)
t=20;//time of exposure (in min)
ab=80;//percentage absorption of light
n=0.075*10^-3;//moles of bromine
E=(6.626*10^-34.*3*10^8)/(w*10^-9);//energy given (in J)
E1=I*t*60*(ab/100);//energy absorbed (in J)
N1=E1/E;//number of quanta absorbed
QY=(n*6.023*10^23)/N1;
printf("The quantum yield of the reaction is %.2f.",QY);
