
//Variable declaration
H=250;      //magnetic field(A/m)
mewr=15;    //relative permeability
mew0=4*%pi*10**-7;  

//Calculation
M=H*(mewr-1);      //magnetisation(A/m)
B=mew0*(H+M);     //flux density(Wb/m**2)

//Result
printf('magnetisation is %0.3f   A/m  \n',M)
printf('flux density is %0.3f    *10**-3 Wb/m**2 \n',(B*10**3))
