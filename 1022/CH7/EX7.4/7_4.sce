clc
//initialisation of variables
v0= 1 //m/s
vi= 60 //m/s
Q= -500 //J/s
m= 500 //gm/s
hi= 2000 //J/gm
h0= 1800 //J/gm
zi= 3 //m
z0= 0 //m
g= 9.8 //m/s^2
gc= 10^3 //gm m/Ns^2
//CALCULATIONS
W= Q+m*((hi-h0)+(vi^2-v0^2)/(2*gc)+(g/gc)*(zi-z0))
//RESULTS
printf ('Maximum theotrical power that can be devoloped= %.e J/s',W)
