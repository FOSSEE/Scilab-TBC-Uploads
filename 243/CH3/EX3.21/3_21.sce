//Example No. 3_21
//Floating Point Arithmetic
//Pg No. 57
clear ;close ;clc ;

fx = 0.500000 ;
Ex = 0 ;
fy = 0.499998 ;
Ey = 0 ;
Ez = 0 ;
fz = fx - fy
disp(fz,'fz = ',Ez,'Ez = ')
mprintf('\n z = %f E%i \n',fz,Ez)
if fz < 0.1 then
     fz = fz*10^6
     n  = length(string(fz))
     fz = fz/10^n
     Ez = Ez + n - 6
     mprintf('\n z = %f E%i (normalised) \n',fz,Ez)
end