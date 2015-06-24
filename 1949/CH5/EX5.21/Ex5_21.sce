//Chapter-5,Example 5_21,Page 5-35
clc()

//Given Values:
a=2*10^-10             //width of potential well in m
h=6.63*10^-34          //Planck's constant
m=9.1*10^-31           //mass of an electron

//Calculations:
//we know equation for energy of an electron
n0=1
E01=n0^2*h^2/(8*m*a^2)   //Energy in ground state
E0=E01/(1.6*10^-19)      //Energy in eV
printf('Energy of an electron in ground state is=%.3f eV \n \n',E0)

n1=2
E11=n1^2*h^2/(8*m*a^2)   //Energy in first excited state
E1=E11/(1.6*10^-19)      //Energy in eV
printf(' Energy of an electron in first excited state is=%.2f eV \n \n',E1)


n2=3
E21=n2^2*h^2/(8*m*a^2)   //Energy in second excited state
E2=E21/(1.6*10^-19)      //Energy in eV
printf(' Energy of an electron in second excited state is=%.2f eV \n',E2)
