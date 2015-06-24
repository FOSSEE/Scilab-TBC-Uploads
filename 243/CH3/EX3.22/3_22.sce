//Example No. 3_22
//Laws of Arithmetic
//Pg No. 57
clear ; close ; clc ;
function [fz,Ez] =add_sub(fx,Ex,fy,Ey) //addition and subtraction fuction
if fx*fy >= 0 then
    //Addition
    [Ez,n] = max(Ex,Ey)
    if n == 1 then
        fy = fy*10^(Ey-Ex)
        fz = fx + fy
        if fz > 1 then
            fz = fz*10^(-1)
            Ez = Ez + 1
        end
    else
        fx = fx*10^(Ex - Ey)
        fz = fx + fy
        if fz > 1 then
            fz = fz*10^(-1) 
            Ez = Ez + 1
        end
    end
    
else
    //Subtraction
    [Ez,n] = max(Ex,Ey)
    if n == 1 then
        fy = fy*10^(Ey-Ex)
        fz = fx + fy
        if abs(fz) < 0.1 then
           fz = fz*10^6
           fz = floor(fz)
           nfz = length(string(abs(fz)))
           fz = fz/10^nfz
           Ez = nfz - 6           
        end
    else
        fx = fx*10^(Ex - Ey)
        fz = fx + fy
        if fz < 0.1 then
           fz = fz*10^6
           fz = int(fz)
           nfz = length(string(abs(fz)))
           fz = fz/10^nfz
           Ez = nfz - 6
        end
    end
end   
endfunction

fx = 0.456732
Ex = -2
fy = 0.243451
Ey = 0
fz = -0.24800
Ez = 0

[fxy,Exy] = add_sub(fx,Ex,fy,Ey)
[fxy_z,Exy_z] = add_sub(fxy,Exy,fz,Ez)
[fyz,Eyz] = add_sub(fy,Ey,fz,Ez)
[fx_yz,Ex_yz] = add_sub(fx,Ex,fyz,Eyz)
mprintf('fxy = %f\n Exy = %i \n fxy_z = %f\n Exy_z = %i \n fyz = %f \n Eyz = %i \n fx_yz = %f \n Ex_yz = %i \n',fxy,Exy,fxy_z,Exy_z,fyz,Eyz,fx_yz,Ex_yz)

if  fxy_z ~= fx_yz | Exy_z ~= Ex_yz then
    disp('(x+y) + z ~= x + (y+z)') 
end