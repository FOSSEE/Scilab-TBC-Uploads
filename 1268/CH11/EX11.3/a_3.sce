clear;
disp("Example A.3")
d=0.097 // diameter in m
gradp= 16 // pressure gradient in N/m
density=1000 // in kg/m^3
tau=gradp*d/4
u=(tau/density)^0.5
y=0.02 // in m
v=1e-6 // kinematic viscosity iin m^2/s
ydash=y*u/v

if(ydash>30) then
    udash=2.5*log(ydash)+5.5
    ugrad=2.5/ydash
    ratio=2*y/d // ratio of ydash/rdash=y/r
    x=(1-ratio)/ugrad-1
    disp(x,"Turbulent viscosity to molecular viscosity at 2m is ")
end
rdash=d*u/(2*v)
ydash=rdash/2
x=(0.5*ydash/2.5)-1
disp(x,"Turbulent viscosity to molecular viscosity at the point of maximum viscosity is ")
