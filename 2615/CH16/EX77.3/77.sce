clc
//initialisation of variables
n=1500//rpm
d1=180//mm
d2=540//mm
d3=160//mm
d4=400//mm
//CALCULATIONS
M=(d1/d2)*(d3/d4)//mm
N=n*M//rpm
//RESULTS
printf('the total speed ratio=% f rpm',N)
