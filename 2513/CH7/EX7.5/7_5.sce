clc
//initialisation of variables
n=20//ft
s=sqrt(12676/19)//ft
c=45.5//ft
q=551400//ft
q1=12700//ft
h=8.5//ft
w=s/c//ft
//CALCULATIONS
D=q/(2*s*q1)//cfs
D1=D*(1+h/n)//cfs
//RESULTS
printf('the record runoff of a stream draining=% f cfs',D1)
