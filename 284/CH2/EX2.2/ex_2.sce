// Chapter 2_Introduction to the quantum theory of solids
//Caption_Lowest allowed energy bandwidth
//Ex_2//page 46

m=9.11*(10^-31)      //mass of electron
h=1.054*(10^-34)
a=5*(10^-10)
c=1.6*(10^-19)     //electron charge
E=((%pi^2)*(h^2))/(2*m*(a)^2)
E2=E/c;
E1= 1.053     // For alpha a=2.628, energy is given in eV
delE=E2-E1
printf('The allowed energy bandwidth is %fd eV\n',delE)
