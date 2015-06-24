
clc
//initialisation of variables
h1=1314.7 //Btu/lbm
h2=1288.7//btu/lbm
h3=1116.2-0.07*1022.2//Btu/lbm
h4=77.9//Btu/lbm
h5=3.0 //Btu/lbm
//CALCULATIONS
q=h2-h1 //Btu/lbm
W=h2-h3 //Btu/lbm
q2=h4-h3 //Btu/lbm
W2=h5+h4 //Btu/lbm
Q=h1-W2 //Btu/lbm
//RESULTS
printf('The quantities of per pound mass flowing through the unit=% f Btu/lbm',Q)
