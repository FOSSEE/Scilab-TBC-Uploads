clc 
//initialisation of variables
t= 10 //min
i= 0.1 //amp
M= 63.54 //gm mole^-1
n=2
F= 96500 //amp-sec equiv^-1
Mo= 32 //g mole^-1
T= 25 //C
R= 0.08205 //l-atm deg^-1 mole^-1
p= 740
n1=4
//CALCULATIONS
m= t*60*i*M/(F*n)
V= t*60*i*Mo*R*(273+T)*760/(F*n1*Mo*p)
//RESULTS
printf ('number of grams of copper deposited at cathode= %.5f gram',m)
printf ('\n volume of oxygen liberated at anode= %.5f lit',V)
