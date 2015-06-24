clc
clear
//Input data
d=0.2;//The diameter of bore in m
L=0.3;//The length of the stroke in m
r=5.5;//The compression ratio of the engine
N=400;//The speed of the engine in rpm
imep=4.5;//The indicative mean effective pressure in bar
a=6;//Air to gas by volume 
CV=12000;//The calorific value of the gas in kJ/m^3
T=340;//The temperature at the beginning of the compression stroke in K
p=0.97;//The pressure at the beginning of the compression stroke in bar
pi=3.141;//The mathematical constant of pi
g=1.4;//Adiabatic index

//Calculations
Vs=(pi/4)*d^2*L;//The swept volume in m^3
Vc=Vs/(r-1);//The clearance volume in m^3
V=Vs+Vc;//Total cylinder volume in m^3
Vg=V/7;//Volume of the gas in total cylinder volume in m^3
Vntp=((p*Vg)/T)*(273/1.013);//Volume of gas at NTP in m^3
Q=Vntp*CV*(N/(2*60));//Heat supplied by the fuel in kJ/s
ip=(imep*10^5*L*(pi/4)*d^2*(N/(2*60))*(1/1000));//Indicated power in kW
ni=(ip/Q)*100;//Indicated thermal efficincy in percent
na=[1-(1/r)^(g-1)]*100;//Air standard efficiency in percent 
nr=(ni/na)*100;//Relative efficiency based on indicated thermal efficiency in percent

//Output
printf('The indicated power = %3.2f kW \n The thermal efficiency = %3.1f percent \n The relative efficiency = %3.1f percent ',ip,ni,nr)
