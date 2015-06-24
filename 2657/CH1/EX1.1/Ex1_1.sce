//Calculation of cubic capacity and clearance volume
clc,clear
//Given:
n=4 //Number of cylinders
d=68/10 //Bore in cm
l=75/10 //Stroke in cm
r=8 //Compression ratio
//Solution:
V_s=(%pi/4)*d^2*l //Swept volume of one cylinder in cm^3
cubic_capacity=n*V_s //Cubic capacity in cm^3
//Since, r = (V_c + V_s)/V_c
V_c=V_s/(r-1) //Clearance volume in cm^3
//Results:
printf("\n The cubic capacity of the engine = %.1f cm^3",cubic_capacity)
printf("\n The clearance volume of a cylinder, V_c = %.1f cm^3\n\n",V_c)
