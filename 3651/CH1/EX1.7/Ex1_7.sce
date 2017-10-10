//variable declaration
d=2.351                 //bond lenght
N=6.02*10**26           //Avagadro number
n=8                     //number of atoms in unit cell
A=28.09                 //Atomin mass of silicon
m=6.02*10**26           //1mole

//Calculations
a=(4*d)/sqrt(3)
p=(n*A)/((a*10**-10)*m)    //density

//Result
printf('a=%0.2fAngstorm\n',a)
printf('density =%0.2f kg/m**3\n',(p*10**16))
printf("//Answer given in the textbook is wrong")
