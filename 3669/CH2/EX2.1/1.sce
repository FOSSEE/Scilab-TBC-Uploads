
//Variable declaration
r=0.1249;     //atomic radius(nm)
n=2;     //number of atoms

//Calculation
a=4*r/sqrt(3);     //edge length(m)
V=a**3;              //volume(nm**3)
v=4*%pi*r**3*n/3;    //volume of atoms(nm**3)
Fv=V-v;     //free volume/unit cell(nm**3)

//Result
printf('free volume/unit cell is %0.3f  nm**3   \n',(Fv))