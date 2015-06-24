clc
clear
//input data
m=25//Mass flow rate of the air in kg/s
d=1.1//Density of the air in kg/m^3
Ca=157//Axial flow velocity of the air in m/s
N=150//Rotational speed of the air in rev/s
U=200//Mean blade speed in m/s
lc=3//Rotor blade aspect ratio 
sc=0.8//Pitch chord ratio

//calculations
rm=(U)/(2*3.145*N)//Mean radius of the blades in m
A=(m)/(d*Ca)//The annulus area of flow in m^2
l=(A)/(2*3.1*rm)//The blade height in m
C=l/lc//The chord of the blades in m
S=sc*C//The blade pitch in m
n=(2*3.141*rm)/(S)//Number of blades 

//output

printf('(a)The mean radius of the blades is %3.3f m\n(b)The blade height is %3.2f m\n(c) (1)The pitch of the blades is %3.4f m\n    (2)The chord of the blades is %3.3f m\n(d)The number of the blades are %3.f',rm,l,S,C,n)
