//Example No. 3_20
//Floating Point Arithmetic
//Pg No. 56
clear ;close ;clc ;

fx = 0.875000 ;
Ex = -18 ;
fy = 0.200000 ;
Ey = 95 ;
fz = fx/fy
Ez = Ex - Ey 
mprintf('\n fz = %f \n Ez = %i \n z = %f E%i \n',fz,Ez,fz,Ez)

if fz > 1 then
    fz = fz/10
    Ez = Ez + 1
    mprintf('\n z = %f E%i (normalised) \n',fz,Ez)
end