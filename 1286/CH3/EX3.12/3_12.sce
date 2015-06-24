clc
//initialisations
m1=10//kg
t1=80//c
t2=20//c
t3=150//c
t4=90//c
t=100//c
a=800//cal/kg
//calculations
h=m1*1000*(t1-t2)/1000
H=a*(t3-t)+540000+1000*(t-t4)
k=H/1000
x=h/k
//results
printf(' kg of steam required per hour= % 1f kg/hr',x)
