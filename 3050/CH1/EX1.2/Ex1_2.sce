//calculating mass
//Example 1.2
clc
clear
wt=152//molar mass of FeSo4 in moles
Eq=210.5//equivalents of CaCO3 in ppm
m=wt*Eq/100//Mass of FeSO4 in ppm
m1=m/1000//Mass of FeSO4 required per liter
printf('Thus the mass of FeSO4 required per litre is %2.5f g/L',m1)
