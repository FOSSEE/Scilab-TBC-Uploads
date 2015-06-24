clc
//initialisation of variables
t=60//f
v=0.52//in
t1=80//F
p=40//percent
v1=1.03*0.40//in
w=8//mph
pa=29.0//in
p1=0.497//ft
q=1.32*10^-2//ft
r=0.268//ft
//CALCULATIONS
E=p1*(1-q*pa)*(1+r*w)*(v-v1)//in
//RESULTS
printf('the evaporation for the a day during=% f in',E)
