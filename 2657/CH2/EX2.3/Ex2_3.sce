//Calculation of air standard efficiency of Otto cycle
clc,clear
//Given:
d=17,l=30 //Bore and stroke in cm
V_c=0.001025 //Clearance volume in m^3
//Solution:
V_s=(%pi/4)*d^2*l //Swept volume in cc
V_c=V_c*10^6 //Clearance volume in cc
V=V_c+V_s //Total cylinder volume in cc
r=V/V_c //Compression ratio
g=1.4 //Specific heat ratio(gamma)
eta=1-1/r^(g-1) //Air standard efficiency
//Results:
printf("\n The Air standard efficiency of Otto cycle, eta = %.1f percent\n\n",eta*100)
