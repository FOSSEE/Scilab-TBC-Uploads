//Example No. 3_13
//Floating Point Arithmetic
//Pg No. 54
clear ;close ;clc ;

fx = 0.586351 ;
Ex = 5 ;
fy = 0.964572 ;
Ey = 2 ;
[Ez,n] = max(Ex,Ey)
if n == 1 then
    fy = fy*10^(Ey-Ex)
    fz = fx + fy
    if fz > 1 then
        fz = fz*10^(-1) 
        Ez = Ez + 1
    end
    disp(fz,'fz = ',fy,'fy = ',Ez,'Ez = ')
else
    fx = fx*10^(Ex - Ey)
    fz = fx + fy
    if fz > 1 then
        fz = fz*10^(-1)
        Ez = Ez + 1
    end
    disp(fz,'fz = ',fx,'fx = ',Ez,'Ez = ')
end
mprintf('\n z = %f E%i \n',fz,Ez)