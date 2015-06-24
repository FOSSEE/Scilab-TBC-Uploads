clc
//initialisation of variables
P= 1//atm
n= 70
T= 75 //F
T1= 70 //F
r1= 0.0131 //lb water/lb dry air
r2= 0.0093 //lb water/lb dry air
h1= 32.36 //Btu/lb dry air
h2= 27.03 //Btu/lb dry air
hd2= 23.40 //Btu/lb dry air
hf= 23.4 //Btu/lb dry liquid
hg= 1094.5 //Btu/lb dry liquid
//CALCULATIONS
R1= r1-r2
Qc= hd2-h1+R1*hf
Qh= h2-hd2
x= R1*(hg-hf) 
y= x/(-Qc)
//RESULTS
printf ('Fraction of heat removed in the coil= %.2f ',y)
