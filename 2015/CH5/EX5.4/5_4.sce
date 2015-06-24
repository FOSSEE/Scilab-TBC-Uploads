clc
//initialisation of variables
x=100 //x=h1-h* in kj/kg
m=120 //mass in kg
pi=(22/7)
y=501.5 //y=h1-h2 in kj/kg
v1=0.607 //volume
v2=6.477 //volume
//CALCULATIONS
c1=44.72*(x)^(0.5)
a1=m*v1/(c1*60)
d1=(4*a1/pi)^0.5
c2=44.72*(y)^(0.5)
a2=m*v2/(c2*60)
d2=(4*a2/pi)^0.5
//RESULTS
printf('area of cross section of throat and diameter of throat are %2fm*m and %2fm',a1,d1)
printf('\narea of cross section at exit and diameter at exit are %2fm*m and %2fm',a2,d2)
