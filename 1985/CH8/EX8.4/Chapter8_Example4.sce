clc
clear
//Input data
//f=(2.87*10^3)/t The fundamental frequency in terms of thickness
x=(2.87*10^3)//x value from function
d=2660//Density in kg/m^3
f=1200//Frequency of vibration in kHz

//Calculations
Y=(2*2*x^2*d)/10^10//Youngs modulus in N/m^2*10^10
t=((1/(2*f*1000))*sqrt((Y*10^10)/d))/10^-3//Thickness in m*10^-3

//Output
printf('Youngs modulus of the quartz crystal is %3.2f *10^10 N/m^2 \n The thickness of the crystal is %3.2f *10^-3 m',Y,t) 
