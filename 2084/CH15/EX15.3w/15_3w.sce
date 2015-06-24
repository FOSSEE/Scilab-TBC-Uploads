//developed in windows XP operating system 32bit
//platform Scilab 5.4.1
clc;clear;
//example 15.3w
//calculation of the speed and displacement of the particle

//given data
A=.80*10^-6//area(im m^2) of the string
rho=12.5*10^-3*10^6//density(in kg/m^3)
nu=20//transverse frequency(in Hz)
F=64//tension(in N)

//calculation
mu=A*1*rho//mass of 1 m of the string = linear mass density
v=sqrt(F/mu)//wave speed
w=2*%pi*nu//angular velocity
//substituting above values equation becomes.....y = (1.0cm)*cos(125*(t-(x/v))) 

function y=f(t,x)
    y=1*cos(2*%pi*nu*(t-(x/v)))
endfunction
t=0.05//time taken(in s)
x=50*10^-2 //displacement(in m)
yn=f(t,x)

function yfv=ffv(t)
    yfv=1*cos(2*%pi*nu*(t-((50*10^-2)/v)))//putting value of x ..to be substituted after derivation
endfunction
vn=derivative(ffv,t)

printf('the wave speed is %d m/s',v)
printf('\nthe wave equation is .......y = (1.0cm)*cos(%d*(t-(x/%d)))',w,v)
printf('\nthe displacement of the particle at x=50 cm at time t=0.05 s is %3.2f cm',yn)
printf('\nthe velocity of the particle at that position is %d cm/s',round(vn))
