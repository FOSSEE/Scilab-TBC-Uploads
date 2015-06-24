clc
//initialisation of variables
m= 0.3 //lt/s
T= 82 //C
P= 2.4 //bar
p= 80
Tw= 800 //C
h1= 67.19 //J/gm
h3= 343.3 //J/gm
hf= 529.65 //J/gm
hfg= 2185.4 //J/gm
v3= 1.0305 //cm^3/gm
V3= 300 //cm^3/s
//CALCULATIONS
h2= hf+(p/100)*hfg
m3= V3/v3
m2= (m3*(h3-h1))/(h2-h1)
//RESULTS
printf ('Required steam flow rate= %.1f gm/s',m2)
