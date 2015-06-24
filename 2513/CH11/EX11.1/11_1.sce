clc
//initialisation of variables
s=20//mph
t=90//min
w=1.31//ft
h=7.5//miles
h1=0.22//ft
t1=1100//min
t2=6.0//min
p=32.2//ft
l=5.12//length
l1=2.8//length
p1=1400//ft
d=73//depth
h3=2.06//ft
e=173.0//ft
hi=0.2//ft
//CALCULATIONS
W=s*w//mph
hs=h1*[(W)^2/p]^0.53*h^0.47//ft
Ts=t2*(W/p)^0.44*(h/p)^0.28//sec
Td=t1*h/(p*Ts)//min
Ls=l1/(l*(Ts)^2)//ft
D=d/(l*(Ts)^2)//ft
H=(W)^2*[h*(1/(p1*d))]//ft
hr=h3*l1//ft
M=e+hi+hr//ft
//RESULTS
printf('the overwater wind speed=% f mph',W)
printf('the significant wave height=% f ft',hs)
printf('the significant wave period=% f sec',Ts)
printf('the minimum wind duration required to reach the significant wave height=% f min',Td)
printf('the significant wave lenght adn steepness=% f ft',Ls)
printf('the reservoir depth ratio=% f ft',D)
printf('the wind tide or set up=% f ft',H)
printf('the run up =% f ft',hr)
printf('the maximum elevation reached by the waves=% f ft',M)
