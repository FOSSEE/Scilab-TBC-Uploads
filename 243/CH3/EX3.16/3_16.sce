//Example No. 3_16
//Floating Point Arithmetic
//Pg No. 55
clear ;close ;clc ;

fx = 0.200000 ;
Ex = 4 ;
fy = 0.400000 ;
Ey = -2 ;
fz = fx*fy
Ez = Ex + Ey 
mprintf('\n fz = %f \n Ez = %i \n z = %f E%i \n',fz,Ez,fz,Ez)
if fz < 0.1 then
    fz = fz*10
    Ez = Ez - 1
    mprintf('\n z = %f E%i (normalised) \n',fz,Ez)
end