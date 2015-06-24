// given data
clear 
clc
rho=1.226 // air density in kG/m^3
alpha =0.14
H=10.0 // height at which wind speed is given in m
uH=12.0 // speed in m/s
z=100.0 // tower height in m
D=80.0 // diameter  in m
effigen=0.85 // efficiency og generator

A=%pi*(D**2)/4 // area in m^3
u0=uH*(z/H)**alpha // velocity at 100 m in m/s
u1=0.8*u0 // exit velocity in m/s 
Po=(A*rho*u0**3)/2 // Total Power in Wind
// Part 1 
printf("Total Power in Wind is %0.2f MW \n",Po/1000000)

// Part 2
a=(u0-u1)/u0 // interference factor
Cp=4*a*(1-a)**2 // Power Coefficient
PT=Cp*Po/1000000 // power to turbine in MW

printf("The power extracted by turbine is %0.2f MW \n",PT)

// Part 3
Pelec=effigen*PT // electrical power generated in MW

printf("The Electrical power generated is %0.2f MW \n",Pelec)

// Part 4
FA=4*a*(1-a)*(A*rho*u0**2)/2 // axial thrust in N

printf("The axial thrust is %0.2f N \n",FA)

// Part 5

Fmax=(A*rho*u0**2)/2 // maximum thrust in N
printf("Maximum axial thrust is %0.2f N \n ",Fmax)



