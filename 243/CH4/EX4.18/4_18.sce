//Example No. 4_18
//Difference of Square roots
//Pg No. 84
clear ; close ; clc ;

x = 497.0 ;
y = 496.0 ;
sqrt_x = sqrt(497)
sqrt_y = sqrt(496)
nx = length( string( floor( sqrt_x ) ) )
ny = length( string( floor( sqrt_y ) ) )
sqrt_x = floor(sqrt_x*10^(4-nx))/10^(4-nx)
sqrt_y = floor(sqrt_y*10^(4-ny))/10^(4-ny)
z1 = sqrt_x - sqrt_y
disp(z1,'z = sqrt(x) - sqrt(y)')
z2 = ( x -y)/(sqrt_x + sqrt_y)
if z2 < 0.1 then
    z2 = z2*10^4
    nz = length(string(floor(z2)))
    z2 = floor(z2*10^(4-nz))/10^(8-nz)
end
disp( z2 , 'z = ( x-y )/( sqrt(x) + sqrt(y) )' )