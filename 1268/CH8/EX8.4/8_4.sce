clc;
disp("Example 8.4")
delZ=0.5
densityw=1000 // of water
densitym=13600 // of mercury
g=9.81 // acceleration due to gravity in m/s^2
reading=0.15
delP=reading*(densitym-densityw)*g+delZ*g*densityw
disp(delP)
// applying bernoullis law and the relation U2=4U1
U1=((2*g*(delP/(densityw*g)-0.5))/15)^0.5
disp(U1,"Velocity is ")
