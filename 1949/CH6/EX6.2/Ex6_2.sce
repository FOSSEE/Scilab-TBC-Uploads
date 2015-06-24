//Chapter-6,Example 6_2,Page 6-26
clc()

//Given Values:
x=3.7*10^-3            //Susceptibility at T=300 K
T=300                  //Temperature in kelvin
T1=250                 //Temperature in kelvin
T2=600                 //Temperature in kelvin

//Calculations:
C=x*T                 //Curie's law
ur1=C/T1              //Relative permeability at 250 K
ur2=C/T2              //Relative permeability at 600 K

printf('Relative Permeability at 250 K is =%.6f \n \n',ur1)
printf(' Relative Permeability at 600 K is =%.6f \n',ur2)
