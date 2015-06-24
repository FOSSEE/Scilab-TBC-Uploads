clc
//initialisation of variables
dq=-80
dv=0.091*10^-6//m^3
p=1.013*10^5//n/m^2
//CALCULATIONS
du=dq-(p*dv/46)
//results
printf(' \n change in internal energy= % 1f cal',du)
