
clear//

//Variable Declaration
M_max=60*10**3 //Maximum Bending Moment in kN.m
sigma_w=120*10**6 //Maximum Bending Stress allowed in Pa
M_max_2=61.52*10**3 //max bending moment computed in N.m

//Section details
mass=38.7 //Mass in kg/m
g=9.81 //Acceleration due to gravity in m/s^2
S=549*10**3 //Sectional modulus of the section in mm^3

//Calculations
S_min=M_max*sigma_w**-1*10**9 //Minimum Sectional Modulus required in mm^3

//We selecet section W310x39
w0=mass*g*10**-3 //Weight of the beam in kN/m
sigma_max=M_max_2*S**-1*10**3 //Maximum stress in MPa

//Result
printf("\n The section chosen is W310x39 with maximum stress as %0.1f MPa",sigma_max)
