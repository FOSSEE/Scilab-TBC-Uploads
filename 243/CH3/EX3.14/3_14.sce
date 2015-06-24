//Example No. 3_14
//Floating Point Arithmetic
//Pg No. 54
clear ;close ;clc ;

fx = 0.735816 ;
Ex = 4 ;
fy = 0.635742 ;
Ey = 4 ;
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