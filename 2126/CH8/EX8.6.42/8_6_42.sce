clc
clear

//Input dat
u=1200*(5/18) //Flight velocity in m/s
Cj=800 //Effective jet velocity in m/s

//Calculation
sig=u/Cj //jet speed ratio
eff=((2*sig)/(1+sig))*100 //Propulsive efficiency in %

//Output
printf('Propulsive efficiency is %3.1f percent',eff)
