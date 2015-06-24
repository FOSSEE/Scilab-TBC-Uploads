//Chapter-6,Example 6_9,Page 6-29
clc()

//Given Values:
u0=4*%pi*10^-7       //Permeability in vacuum
xm=948*10^-11        //susceptibility of the iron bar

//Calculations:
ur=1+xm            //relative permeability
u=u0*ur            //permeability of medium

printf('Relative Permeability of medium is =%.8f \n \n',ur)
printf(' Permeability of medium is =%.9f H/m \n',u)

