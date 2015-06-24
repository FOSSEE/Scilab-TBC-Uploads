clc
clear
//Input data
p=(1.01*10^5)//Standard atmospheric pressure in N/m^2
K=(16*10^10)//Bulk modulus in N/m^2
dp=(p-10^2)//Change in pressure in N/m^2

//Calculations
dvv=(dp/K)//Change in volume to initial volume
fv=(dvv/10^-7)//Fractional change in the volume *10^-7

//Output
printf('The change in volume of steel bar is %3.1f*10^-7 *V m^3',fv)
