
//Variable declaration
mew0=4*%pi*10**-7;    
B=0.0044;     //flux density(Wb/m**2)
M=3300;      //magnetic moment(A/m)

//Calculation
H=(B/mew0)-M;    //magnetizing force(A/m)
mewr=1+(M/H);    //relative permeability

//Result
printf('magnetizing force is %0.3f   A/m  \n',int(H))
printf('relative permeability is %0.3f     \n',(mewr))
printf('answer varies due to approximating off errors\n')