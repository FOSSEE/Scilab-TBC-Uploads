clc;
clear;
rho=10 //resistivity in ohm-cm
myu_n=1300 //electron mobility in cm^2/V*s
e=1.6*10^-19 //in eV
Cs=5*10^18 //constant surface concentartion in cm^-3
t=1 //in hour
x=1 //depth in micro-m

//Calculation
sigma=1/rho //in (ohm-cm)^-1
n=sigma/(myu_n*e) //in cm^-3
n_Cs=n/Cs 
erfc1_y=n_Cs //error function
y=2.75 //reference page 181 from fig 5.1.1. value obtained by plotting erfc1_y (Complementary error function) as a function of y
rootD=x/(2*y*sqrt(t))
T=1100 //reference page 168 from fig 5.10(b)

mprintf("rootD = %.2f micro-m/h^-2\n",rootD)
mprintf("Temperature at diffusion should be carried out= %i Celsius\n",T)
mprintf("The temperature value was choosen by determing the value of T against root(D) in the figure of Diffusivity of acceptor impurities in silicon versus T")
