clc
//initialisation of variables
p1=150//lb/in^2
p2=10//lb/in^2
n=10//percent
T=183.6+479.4//C.H.U
x2=0.852//C.H.U
H=553.9//C.H.U/lb
h1=T-H//C.H.U/lb
//CALCULATIONS
V=sqrt(2*32.2*1400*h1)//ft/sec
V1=sqrt(2*32.2*1400*0.9*h1)//ft/sec
//RESULTS
printf('the neglecting friction=% f ft/sec',V)
printf('the frictional drop in the nozzle is 10 recent of the total heat drop=% f ft/sec',V1)
