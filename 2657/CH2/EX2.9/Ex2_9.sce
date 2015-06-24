//Calculations on Otto cycle
clc,clear
//Given:
power=50 //Internal power in kW
N=4800 //Engine speed in rpm
l=80,d=80 //Stroke and bore of engine in mm
n=4 //Number of cylinders
V_c=50000 //Clearance volume in mm^3
delta_P=45 //Pressure rise during combustion in bar
g=1.4 //Specific heat ratio(gamma)
//Solution:
//Refer fig 2.24
V_s=(%pi/4)*d^2*l //Swept volume in mm^3
r=(V_c+V_s)/V_c //Compression ratio
eta=1-1/r^(g-1) //Air standard efficiency
ideal_mep=eta*delta_P/((g-1)*(r-1)) //Ideal mean effective pressure in bar
W=power*60*2/(n*N) //Actual work transfer per cycle per cylinder in kJ
V_s=V_s*1D-9 //Swept volume in m^3
actual_mep=W*1000/(V_s*10^5) //Actual mean effective pressire in bar
//Results:
printf("\n The mean effective pressure of the engine, actual mep = %.2f bar",actual_mep)
printf("\n The mean effective pressure of the Otto cycle, ideal mep = %.2f bar\n\n",ideal_mep)
