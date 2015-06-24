//Example No. 3_19
//Floating Point Arithmetic
//Pg No. 56
clear ;close ;clc ;

fx = 0.350000 ;
Ex = 40 ;
fy = 0.500000 ;
Ey = 70 ;
fz = fx*fy
Ez = Ex + Ey 
mprintf('\n fz = %f \n Ez = %i \n z = %f E%i \n',fz,Ez,fz,Ez)
if fz < 0.1 then
    fz = fz*10
    Ez = Ez - 1
    mprintf('\n z = %f E%i (normalised) \n',fz,Ez)
end