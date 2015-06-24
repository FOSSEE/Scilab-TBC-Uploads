//Example No. 3_17
//Floating Point Arithmetic
//Pg No. 55
clear ;close ;clc ;

fx = 0.876543 ;
Ex = -5 ;
fy = 0.200000 ;
Ey = -3 ;
fz = fx/fy
Ez = Ex - Ey 
mprintf('\n fz = %f \n Ez = %i \n z = %f E%i \n',fz,Ez,fz,Ez)

if fz > 1 then
    fz = fz/10
    Ez = Ez + 1
    mprintf('\n z = %f E%i (normalised) \n',fz,Ez)
end