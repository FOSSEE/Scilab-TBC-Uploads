
//Variable declaration
chi=-0.4*10**-5;      //magnetic susceptibility
H=5*10**5;      //magnetic field(A/m)
mew0=4*%pi*10**-7;    

//Calculation
B=mew0*H*(1+chi);     //flux density(Wb/m**2)
M=chi*H;      //magnetic moment(A/m)

//Result
printf('flux density is %0.3f    Wb/m**2 \n',(B))
printf('magnetic moment is %0.3f   A/m  \n',M)