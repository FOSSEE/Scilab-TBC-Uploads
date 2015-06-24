//Example No. 3_24
//Distributive law
//Pg No. 58
clear ;close ;clc ;

x = 0.400000*10^1 ;
fx = 0.400000
Ex = 1
y = 0.200001*10^0 ;
z = 0.200000*10^0 ;
x_yz = x*(y-z)
x_yz = x_yz*10^6
x_yz = floor(x_yz) //considering only six significant digits
n = length(string(x_yz))
fx_yz = x_yz/10^n
Ex_yz = n - 6
x_yz = fx_yz *10^Ex_yz
disp(x_yz,'x_yz = ')

fxy = fx*y
fxy = fxy*10^6
fxy = floor(fxy) //considering only six significant digits
n = length(string(fxy))
fxy = fxy/10^n
Exy = n - 6
xy = fxy * 10^Exy

fxz = fx*z
fxz = fxz*10^6
fxz = floor(fxz) //considering only six significant digits
n = length(string(fxz))
fxz = fxz/10^n
Exz = n - 6
xz = fxz * 10^Exz

xy_xz = xy - xz
disp(xy_xz,'xy_xz = ')