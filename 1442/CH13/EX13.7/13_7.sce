clc
//initialisation of variables
vi= 0.0009992 //m^3
T= 60 //C
T1= 20 //C
T2= 40 //C
vi1= 0.0010042 //m^3
vi2= 0.0009886 //m^3
v= 0.000951 //m^3
v1= 0.0009992 //m^3
v2= 0.0009956 //m^3
//CALCULATIONS
B= (vi1-vi2)/(vi*(T-T1))
Kt= (v1-v2)/(v*(T2-T1))
Et= 1/Kt
//RESULTS
printf (' volume exapansion coefficient= %.2e L/s',B)
printf (' \n isothermal compressibility= %.3e Mpa',Kt)
printf (' \n isothermal modulus of elasticity= %.f Mpa',Et)


//ANSWER FOR Et GIVEN IN THE TEXTBOO IS WRONG
