clc
//initialisation of variables
n=42//cu ft
p=80//psi
t=120//F
p1=7.2//lb
T=144*(p+14.7)*n/(1545*(t+460))//mol
//CALCULATIONS
N=p1/28//mol
P=n*(N/T)//cu ft
V=n*(T-N)/T//cu ft
//RESULTS
printf('The carbon monoxide equal=% f cu ft',V)
