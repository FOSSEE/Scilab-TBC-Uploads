//Example No. 3_15
//Floating Point Arithmetic
//Pg No. 54
clear ;close ;clc ;

fx = 0.999658 ;
Ex = -3 ;
fy = 0.994576 ;
Ey = -3 ;
Ez = max(Ex,Ey)
fy = fy*10^(Ey-Ex)
fz = fx - fy
disp(fz,'fz = ',Ez,'Ez = ')
mprintf('\n z = %f E%i \n',fz,Ez)
if fz < 0.1 then
     fz = fz*10^6      //Since we are using 6 significant digits
     n = length(string(fz))
     fz = fz/10^n
     Ez = Ez + n - 6
     mprintf('\n z = %f E%i (normalised) \n',fz,Ez)
end