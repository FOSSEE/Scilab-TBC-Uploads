//Flux density, field intensity and permeability
//Example 6.3(pg 213)
clc
clear
l=0.4//mean circumference in m
N=200//tunrs
Uo=4*%pi*(10^-7)//permeability of free space in H/m
a=5*(10^-4)// cross section area in m^2
I=6.4//current in Amp
f=0.8*(10^-3)//flux in Wb
fd=f/a//flux density in Wb/m^2
fi=I*N/l//Field intensity in AT/m
Ur=(f*l)/(N*I*Uo*a)//relative permeability
printf('(i) The Flux density is %3.2f Wb/m^2 \n',fd)
printf('(ii) The Field intensity is %3.2f AT/m \n',fi)
printf('(iii) The Relative permeability of steel is %3.2f ',Ur)
//The answer to part(iii) has a calculation error in the textbook, hence it doesn't match the answer here.
