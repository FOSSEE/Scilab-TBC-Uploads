clear
clc
//Example 7.1 KINETIC ENERGY CORRECTION FACTOR FOR LAMINAR FLOW
Vmax=1; //max velocity[m/s](say)
ro=1; //radius of pipe[m](say)
A=%pi*ro^2 //area[m^2]
//Given, V=Vmax(1-(r/ro)^2)
//dA=2*pi*r*dr
Vbar=(1/A)*integrate('Vmax*(1-(r/ro)^2)*2*%pi*r','r',0,ro) //mean velocity[m/s]
alpha=(1/A)*integrate('((Vmax*(1-(r/ro)^2))/Vbar)^3*2*%pi*r','r',0,ro) //kinetic-energy correction factor
printf("\nThe kinetic-energy correction factor is %.f.\n",alpha)