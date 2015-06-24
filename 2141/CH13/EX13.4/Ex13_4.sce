
clc
//initialisation of variables
T=537//K
R=1.986//K
DelG=-98345//Btu/lbm
T2=3600//K
DelG1=-58324//Btu/lbm
//CALCULATIONS
K=(DelG)/(R*T)//Btu
K1=(DelG1)/(R*T2)//Btu
//RESULTS
printf('The euilibrium constant=% f Btu',K1)
