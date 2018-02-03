clear
//
//
//

//Variable declaration
w=23+35.5           //molecular weight of NaCl(gm/mole)
N=6.023*10**23      //avagadro number(gm/mol)
rho=2.18            //density of NaCl(gm/cm**3)
n=2                 //number of atoms

//Calculation
m=w/N               //mass of NaCl(gm)
nm=rho/m            //number of molecules(mole/cm**3)
N_NaCl=n*nm         //number of atoms per unit volume(atoms/cm**3) 
a=(1/N_NaCl)**(1/3)     //distance between adjacent atoms(cm)


//Result
printf("\n number of atoms per unit volume is %0.2f  *10**22 atoms/cm**3",N_NaCl/10**22)
printf("\n distance between adjacent atoms is %0.2f  angstrom",a*10**8)
