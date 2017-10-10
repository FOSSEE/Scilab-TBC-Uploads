//ques-10.1
//Calculating viscosity index of the oil sample
clc
L=774;//low viscosity standard
H=414;//high viscosity standard
U=564;//saybolt universal viscosity
V_I=((L-U)/(L-H))*100;//viscosity index
printf("viscosity index of oil sample is %.2f.",V_I);
