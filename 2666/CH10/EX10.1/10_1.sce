clc
//initialisation of variables
v=1600//ft per sec
v1=600//ft per sec
a=15//degree
v2=0.90//ft
b=20//degree
g=32.2//ft
r=(v*cosd(a)-v1)^2//ft per sec
r1=(v*sind(a))^2//ft per sec
//CALCULATIONS
Vr=sqrt(r+r1)//ft per sec
Vr1=v2*Vr//ft per sec
V=Vr1*cosd(b)//ft per sec
V1=v*cosd(a)-v1//ft per sec
W=(V1+V)*(v1)/g//ft-lb
E=W/(v^2/2*g)*100000//percent
//RESULTS
printf('The efficiency =% f percent',E)
