clear
//
//
//

//Variable declaration
r=0.1249     //radius(nm)
n=2          //number of atoms

//Calculation
a=4*r/sqrt(3)    //unit cell edge length(nm)
V=a**3                //volume of unit cell(nm**3)
v=4*n*%pi*r**3/3  //volume of atoms in unit cell(nm**3)
fv=V-v                //free volume per unit cell(nm**3)

//Result
