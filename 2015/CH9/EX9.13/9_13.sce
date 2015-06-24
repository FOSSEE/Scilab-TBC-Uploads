clc
//initialisation of variables
p2=1.5 //pressure in bar
p1=1 //pressure in bar
v=0.05 //volume in m*m*m
g=1.4
r=1.4
n=120 //number of cycles
//CALCULATIONS
wa=v*(p2-p1)*100
wi=3.5*100*p1*v*(((p2/p1)^((r-1)/r))-1)
reff=wi/wa
vo=v/4
pr=wa*n/60
//RESULTS
printf('roots efficiency is %2f',reff)
printf('\nvolume of air is %2fm*m*m/cycle',vo)
printf('\npower required is %2fkw',pr)
