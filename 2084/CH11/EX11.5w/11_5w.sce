//developed in windows XP operating system 32bit
//platform Scilab 5.4.1
clc;clear;
//example 11.5w
//calculation of the work done by an external agent

//given data
//E = (10 N/kg)(i + j).....given gravitational field
Ex=10//value of X-component of gravitational field(in N/kg)
Ey=10//value of Y-component of gravitational field(in N/kg)
m=2//mass(in kg) of the gravitational field
x0=0//value of X component of initial location(in m)
x1=5//value of X component of final location(in m)
y0=0//value of Y component of initial location(in m)
y1=4//value of Y component of final location(in m)

//calculation
function Fx=fx(x)
    Fx=m*Ex//value of X component of force
endfunction

function Fy=fy(x)
    Fy=m*Ey//value of Y component of force
endfunction

//calculation
W1=integrate('fx','x',x0,x1)//work done by X component of external force
W2=integrate('fy','x',y0,y1)//work done by Y component of external force 
W=W1+W2

printf('the work done by the external agent is %d J',-W)
