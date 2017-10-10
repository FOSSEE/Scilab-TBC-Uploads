//Variable declaration
d=7300                  //density in (kg/m**3)
N=6.02*10**26           //Avagadro Number
A=118.7                 //Atomic Weight
E=1.9                 //Effective mass
e=1.6*10**-19

//Calculations
n=(d*N)/A
m=E*9.1*10**-31
x=4*%pi*10**-7*n*e**2
lamda_L=sqrt(m/x)
      
//Result
printf('Number of electrons per unit volume = %0.3f   *10**28/m**3     \n',(n/10**28))
printf('Effective mass of electron m = %0.3f     *10*-31 kg   \n',(m*10**31))
printf('Penetration depth = %0.3f   Angstroms  \n',lamda_L*10**8)
printf('//The answer given in the text book is wrong')