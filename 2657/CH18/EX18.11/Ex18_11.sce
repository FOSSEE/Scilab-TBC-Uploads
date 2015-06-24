//Calculations from indicator diagram
clc,clear
//Given:
Li=100 //Length of indicator diagram in mm
Ai=2045 //Area of indicator diagram in mm^2
Pi=2/10 //Pressure increment in cylinder from indicator pointer in bar/mm
d=100,l=100 //Bore and stroke in mm
N=900 //Engine speed in rpm
eta_m=75 //Mechanical efficiency in percent
//Solution:
Hi_av=Ai/Li //Mean height of indicator diagram in mm
imep=Hi_av*Pi //Mean effective pressure in bar
ip=imep*100*%pi/4*d^2*l*N/(2*60)*10^-9 //Indicated power in kW
bp=ip*eta_m/100 //Brake power in kW
//Results:
printf("\n The mean effective pressure, mep = %.2f bar",imep)
printf("\n The indicated power, ip = %.2f kW",ip)
printf("\n The brake power, bp = %.2f kW\n\n",bp)
