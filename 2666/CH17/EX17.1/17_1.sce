clc
//initialisation of variables
p1=16.5//psia
p2=14.2//psia
p3=14.7//psia
t=250//F
t1=1500//F
p=8//percvent
d=6//units
v=1+(1.0-0.08)*6//units
h=710//ft
h1=1960//ft
h2=520//ft
g=12.5//ft
w=47.0//ft
//CALCULATIONS
V=(p1/p2)*(h/h1)//units
V1=v-V//units
V2=V1*(p2/p3)*(h2/h)//units
V3=((g+w)/(g+w+1))//percent
V4=V2*V3//units
E=V4/d*100//percent
//RESULTS
printf('The volumetric efficiency of the engine is=% f percent',E)
