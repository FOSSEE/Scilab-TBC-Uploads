//variable declaration
n=4     
A=63.55                 //Atomic wt. of NaCl
N=6.02*10**26           //Avagadro number
rho=8930                //density

//Calculations
a=((n*A)/(N*rho))**(1/3)      //Lattice Constant

//Result
printf('lattice constant, a=%0.3f nm',(a*10**9))
