clc
clear
//Initalization of variables
h1=24.973 //Btu/lb
h2=81.436 //Btu/lb
cfm=200 //cfm
v2=0.77357
v3=3.8750
h4=72.913
//calculations
mass=cfm/v2
ref=h2-h1
tonnage=mass*ref/cfm
mass2=cfm/v3
ref2=h4-h1
tonnage2=mass2*ref2/cfm
//results
printf("In case 1,Tonnage = %.1f tons",tonnage)
printf("\n In case 2,Tonnage = %.2f tons",tonnage2)
