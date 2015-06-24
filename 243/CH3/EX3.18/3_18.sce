//Example No. 3_18
//Floating Point Arithmetic
//Pg No. 56
clear ;close ;clc ;

fx = 0.500000 ;
Ex = 1 ;
fy = 0.100000 ;
Ey = -7 ;
[Ez,n] = max(Ex,Ey)
if n == 1 then
    fy = fy*10^(Ey-Ex)
    fz = fx + fy
    if fz > 1 then
        fz = fz*10^(-1) 
        Ez = Ez + 1
    end
    disp(fy,'fy = ',Ez,'Ez = ')
else
    fx = fx*10^(Ex - Ey)
    fz = fx + fy
    if fz > 1 then
        fz = fz*10^(-1)
        Ez = Ez + 1
    end
    disp(fx,'fx = ',Ez,'Ez = ')
end
mprintf('\n fz = %f \n z = %f E%i \n',fz,fz,Ez)