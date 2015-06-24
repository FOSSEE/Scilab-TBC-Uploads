clc

P=70 //kN
c=0.05//m
c1=c
c2=c
R=0.1+0.05
A=0.005

//m=(-1/(2*c))*integrate((y/R+y)dy)
x=integrate('(-c)','c',0,1)
m=-1+(R/2*c)*log((R+c)/(R-c))
disp(m)
//m=(-1/(2*c))*integrate((y/R)-(y^2/R^2)+(y^3/R^3)-(y^4/R^4)+.....)dy)
m=-1+(3/2)*log(2)
disp(m)

M=P*R
disp(M)
sigmatheta1=(-P*c2)/(m*A*(R-c1))
disp(sigmatheta1,"stress in Pa is= ")
sigmatheta2=(P*c2)/(m*A*(R+c2))
disp(sigmatheta2,"stress in Pa is= ")
