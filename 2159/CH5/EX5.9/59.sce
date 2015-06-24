// problem 5.9
b=4
H=0.2
Cd=0.62
g=9.81
Q1=2*Cd*b*((2*g*H*H*H)^0.5)/3
Q2=(2*Cd*((2*g)^0.5)*(H^1.5)*(b-(0.2*H)))/3
m=0.405+(0.003/H)
Q3=m*b*((2*g)^0.5)*(H^1.5)
disp(Q1,"discharge when end contraction are supressed in m3/sec")
disp(Q2,"discharge when end contraction are taken into account by francis formula in m3/sec")
disp(Q3,"discharge when end contraction are taken into account by bazin formula in m3/sec")
