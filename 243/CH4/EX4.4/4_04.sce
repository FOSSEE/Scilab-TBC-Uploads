//Example No. 4_04
//Rounding-Off
//Pg No. 66
clear ; close ; clc ;

fx = 0.7526
E =3
gx = 0.835
d = E - (-1)
//Chopping Method
Approx_x = fx*10^E
Err = gx*10^(E-d)
mprintf('\n Chooping Method : \n Approximate x = %.4f*10^%i \n Error = %.4f \n ',fx,E,Err)
//Symmetric Method
if gx >= 0.5 then
    Err = (gx -1)*10^(-1)
    Approx_x = (fx + 10^(-d))*10^E
else
    Approx_x = fx*10^E
    Err = gx * 10^(E-d)
end
mprintf('\n Symmetric Rounding :\n Approximate x = %.4f*10^%i \n Error = %.4f \n ',fx + 10^(-d),E,Err)
