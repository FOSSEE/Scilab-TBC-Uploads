clc
//initialisation of variables
p1=200//kg
p2=300//kg
p3=250//kg
a1=1//m
a2=1.5//m
a3=2//m
l=5//m
w=20//kg
L=5.5//m
Rb=415//kg
Ra=1325//kg
//CALCULATIONS
RA=p1+p2+p3//kg
RB=RA-Rb//kg
B=L*w//kg
R=RB+(B/2)//kg
S=Rb+(B/2)//kg
//RESULTS
printf('the beam lying is force=% f kg',S)
