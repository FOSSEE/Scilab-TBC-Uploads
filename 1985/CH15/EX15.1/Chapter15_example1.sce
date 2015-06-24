clc
clear
//Input data
d=10*10^8//Difference between the principal stress in N/m^2
c=(1*10^-12)//Stress-optic coefficient in m^2/N

//Calculations
N=(c*d)//Difference between the refractive indices

//Output
printf('The difference between the refractive indices along the principal stresses is %3.3f',N)
