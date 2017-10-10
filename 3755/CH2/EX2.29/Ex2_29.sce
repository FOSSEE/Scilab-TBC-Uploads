clear
//
//
//

//Variable declaration
a=1;     //assume
n=2;     //number of atoms

//Calculations
r=a*sqrt(3)/4;          //radius of atom
V=4*%pi*r^3/3;          //volume
f=n*V*100/a^3;      //packing fraction

//Result
printf("\n packing fraction is %0.0f percentage",f)
