clc
clear
//Input data
f=15//Focal length of achromatic doublet made up of crown and flint glasses in cm
fl=[0.01506,0.02427]//Dispersive power of crown and flint glasses respectively 

//Calculations
//Solving two equations
//(1/f)=(1/f1)+(1/f2)
//(f1/f2)=(-0.01506/0.02427)
fx=(fl(1)/fl(2))//Ratio of focal lengths
f2=(-(1/fx)+1)/(1/f)//Focal length of converging lens in cm
f1=(-fx*f2)//Focal length of diverging lens in cm

//Output
printf('Focal length of converging lens is %3.4f cm \n Focal length of diverging lens is %3.1f cm',f2,f1)
