//Calculations by Morse test
clc,clear
//Given:
n=12 //Number of cylinders
function bp=f(W),bp=W*N/180,endfunction //Power law of engine
d=38,l=50 //Bore and stroke in cm
N=200 //Engine speed in rpm
Wall1=2000,Wall2=2020 //Brake loads when all cylinders are firing in N
Wn=[1795 1814 1814 1795 1804 1819 1800 1824 1785 1804 1814 1795] //Brake load when cylinder number 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12 are out in N
//Solution:
W=(Wall1+Wall2)/2 //Average of brake loads when all cylinders are firing in N
bp=f(W) //Total brake power in kW
ipn=bp-f(Wn) //Indicated power of cylinders number 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12 in kW
ip=sum(ipn) //Total indicated power equal to sum of individual in kW
eta_m=bp/ip //Mechanical efficiency
A=%pi/4*d^2*10^-4 //Area of cylinder in m^2
bmep=bp*1000/(n*l/100*A*N/(60)) //Brake mean effective pressure in Pascal
//Results:
printf("\n The brake mean effective pressure, bmep = %.2f bar",bmep*10^-5)
printf("\n The mechanical efficiency, eta_m = %.1f percent\n\n",eta_m*100)
