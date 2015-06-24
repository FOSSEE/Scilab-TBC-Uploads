//Chapter-6,Example 6_1,Page 6-26
clc()

//Given Values:
H=198               //Magnetizing Force in Ampere per meter
M=2300              //Magnetization in Ampere per meter
u0=4*%pi*10^-7      //Permeability in vacuum

//Calculations:
//H=(B/u0)-M
B=u0*(H+M)          //Flux Density
ur=B/(u0*H)         //Relative Permeability

printf('Corresponding Flux Density is =%.5f Wb/m^2 \n \n',B)
printf(' Relative Permeability is =%.2f \n',ur)
