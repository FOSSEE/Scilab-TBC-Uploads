clc
Rhow=1000 //density of water in ρ(kg/metre cube)
RhoHg=13.6*(10^3) //density of mercury in ρ(kg/metre cube)
g=9.81 //gravitational constant in  metre/second square
h=0.2 //in metres
Pdrop=(RhoHg-Rhow)*g*h 
mprintf('The pressure drop with water in manometer is%fkPa',Pdrop/1000)//ans may vary due to roundoff error with Pdrop converted in kilo pascals


