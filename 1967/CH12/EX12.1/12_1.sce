clc
//initialisation of variables
clear
p1= 50 //atm
p2= 100 //atm
p3= 200 //atm
p4= 400 //atm
p5= 800 //atm
p6= 1000 //atm
r1= 0.979
r2= 0.967
r3= 0.971
r4= 1.061
r5= 1.489
r6= 1.834
//CALCULATIONS
f1= r1*p1
f2= r2*p2
f3= r3*p3
f4= r4*p4
f5= r5*p5
f6= r6*p6
//RESULTS
printf ('fugacity of nitrogen gas = %.2f atm',f1)
printf ('\n fugacity of nitrogen gas = %.1f atm',f2)
printf ('\n fugacity of nitrogen gas = %.1f atm',f3)
printf ('\n fugacity of nitrogen gas = %.1f atm',f4)
printf ('\n fugacity of nitrogen gas = %.f atm',f5)
printf ('\n fugacity of nitrogen gas = %.f atm',f6)
