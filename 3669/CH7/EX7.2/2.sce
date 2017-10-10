
//Variable declaration
chi=-0.25*10**-5;      //magnetic susceptibility
H=1000;      //magnetic field(A/m)
mew0=4*%pi*10**-7;    

//Calculation
M=chi*H;      //magnetisation(A/m)
B=mew0*(H+M);     //flux density(Wb/m**2)

//Result
printf('magnetisation is %0.3f  *10**-2 A/m   \n',M*10**2)
printf('flux density is %0.3f  *10**-3 Wb/m**2   \n',(B*10**3))