clc
clear
//Input data
d=0.175;//The diameter of the bore in m
pi=3.141;//The mathematical constant of pi
L=0.32;//The length of the stroke in m
p=6.5;//Mean effective pressure in bar
pp=0.4;//Pumping loop mean effective pressure in bar
N=510;//The speed of the engine in rpm
pm=0.65;//Diagrams from the dead cycle give a mep in bar
n=55;//Firing strokes per minute 

//Calculations
pmi=p-pp;//The net imep at full load in bar
c=((N/2)-n);//Dead cycles per minute at no load 
ipw=pmi*10^5*L*(pi/4)*d^2*(n/60)*(1/1000);//Indicating power for working cycles in kW
Pp=pm*10^5*L*(pi/4)*d^2*(c/60)*(1/1000);//Pumping power of dead cycles in kW
fp=ipw-Pp;//Power in kW
fip=pmi*10^5*L*(pi/4)*d^2*(N/(2*60))*(1/1000);//Full load indicated power in kW
fbp=fip-fp;//Full load break power in kW
nm=(fbp/fip)*100;//Mechanical efficiency in percent 

//Output 
printf(' The full load break power = %3.2f kW \n The mechanical efficiency of the engine = %3.1f percent ',fbp,nm)
