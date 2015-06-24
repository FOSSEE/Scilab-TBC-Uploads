clc,clear
printf('Example 1.14\n\n')

P=4  //number of poles
A=2 //because wave wound
Z=792 //No of conductors
phi=0.012  //flux per pole in weber
E_g=240 //on no-load
//running speed
N=E_g*60*A/(phi*P*Z) //becuase E_g= phi*P*N*Z/(60*A)

printf('Required running speed is %.3f r.p.m',N)
