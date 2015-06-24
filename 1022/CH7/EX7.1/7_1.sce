clc
//initialisation of variables
m= 3000 //lb
Z1= 50 //ft
V1= 50 //mph
gc= 32.2 //ft/lbf s^2
V2= 0 //mph
g= 32.2 //ft/s^2
Z2= 0 //ft
//CALCULATIONS
V1= V1*(73.3/50)
Q2= ((m*(V2^2-V1^2))/(2*gc))+((m*g)/gc)*(Z2-Z1)
//RESULTS
printf ('Energy dissipated from the brakes= %.e ft lbf',-Q2)
