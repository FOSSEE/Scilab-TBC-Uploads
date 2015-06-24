
clc
//initialisation of variables
n=900//rpm
H1=64//ft
p=38.4//bhp
p1=500//bhp
H=81//ft
D=1//ft
//CALCULATIONS
k=(n*sqrt(p))/(H1^1.25)
n1=(k*H^1.25)/(sqrt(p1))
c=D*n/(sqrt(H1))
D1=c*sqrt(H)/n1
//RESULTS
printf ('\n diameter of turbine= %.2f ft',D1 )
