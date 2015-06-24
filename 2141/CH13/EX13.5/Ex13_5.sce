
clc
//initialisation of variables
yCo2=0.534/1.233//btu
yCo=0.466/1.233 //Btu
yO2=0.233/1.233//Btu
HR=0//Btu/mole
Hp=-48860//btu/mole c burned
//CALCULATIONS
Q=Hp-HR//btu/mole c burned
//RESULTS
printf('The equilibrium composition and heat transfer=% f Btu/mole c burned',Q)
