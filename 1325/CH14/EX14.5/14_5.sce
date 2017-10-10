//To find the balance weight required and the residual unbalanced force
clc
//given
W=180//lb
R=150//lb
c=.5
N=300//rpm
r=7.5/12//ft
Bb=(W+c*R)*r*12
b=6//in
B=Bb/b
w=(%pi*N)/30
Uf=(1/2)*(R/g)*w^2*r
a=floor(Uf)
printf("Balance weight required = %.1f lb\n The resultant unbalanced force = %.f lb\n",B,a)
