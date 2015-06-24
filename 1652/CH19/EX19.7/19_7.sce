clc
//Initialization of variables
c=0.1 //M
V=100 //ml
v1=25 //ml
D=0.980
d1=0.090
d2=0.150
//calculations
a=v1*c/V
b=(V-v1)*c/V
Da=a*d1/c
Db=b*d2/c
Ddash=Da+Db
dD=D-Ddash
//results
printf("Increase in optical density = %.3f",dD)
