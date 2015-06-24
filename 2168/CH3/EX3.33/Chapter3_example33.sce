clc
clear
//Input data
d=18//Bore in cm
l=37.5//Stroke in cm
N=220//Speed in r.p.m
//Mean effective pressure in kg/cm^2
//Firing
pp=5.9//Positive loop
pn=0.248//Negative loop
//Missing
nn=0.432//Negative loop
bhp=8.62//Brake horse power in h.p
ex=100//Explosions per minute
vg=0.101//Gas used in cu.m per minute

//Calculations
tc=(N/2)//The number of cycles 
nw=ex//Number of working cycles 
nm=(tc-nw)//Number of missing cycles
ihp=((l/100)*(3.14/4)*(d^2/4500))*((pp-pn)*(100-nn))//Net I.H.P in h.p
fhp=(ihp-bhp)//Friction horse power in h.p
W=((pp-pn)*(3.14/4)*(d^2*(l/100)))//Workdone per firing done in kg.m
Wp=(nn*(3.14/4)*d^2*(l/100))//Workdone per pumping stroke in kg.m
n=((fhp*4500)+(Wp*tc))/(W+Wp)//Number of strokes
gf=(vg/nw)//Gas per firing stroke in cu.m
gl=(n*gf)//Gas per minute at no load in cu.m

//Output
printf('Friction horse power of the engine is %3.2f \n Gas consumption at no load is %3.3f cu.m/min',fhp,gl)
