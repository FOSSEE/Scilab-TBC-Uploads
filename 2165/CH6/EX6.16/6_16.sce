
clc
//initialisation of variables
t=65//B.Th.U per lb
n=0.98//dry
p=105//lb/in^2
a=14//Degree C
b=20//Degree C
p1=800//ft/sec
v=0.80//ft/lb
p2=3.5//lb/sec
q=1400//in
V=sqrt(2*32.2*778*t)//ft/sec
W=(p1)*(1750-b)/32.2//ft lb/lb stream/sec
H=(W*p2/550)//ft/lb
E=1/64.4*[(1053)^2-(825)^2]//ft.lb steam /sec
//CALCULATIONS
Hd=(E/q)//C.H.U
//RESULTS
printf('the steam as it leaves the blades and hourse power=% f C.H.U',Hd)
