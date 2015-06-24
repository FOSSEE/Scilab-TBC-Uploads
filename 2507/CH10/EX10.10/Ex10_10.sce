clc
clear
printf("Example 10.10 | Page number 359 \n\n");
//Find the temperature of steam
p = 2 //bar
m = 0.16 //kg
V = 0.1 //m^3
//Solution
//refereing to the saturation temperature corresponding to 2bar
v = V/m //m^3/kg
vf = 0.001061 //m^3/kg
vg = 0.8857 //m^3/kg
printf('Specific volume at saturated liquid phase (vf) = %.6f m^3/kg \n',vf)
printf('Specific volume at saturated vapor phase (vg) = %.6f m^3/kg \n',vg)
    
if v<vg & v>vf then
    printf('\nThe temperature of the steam must be equal to saturation temperature corresponding to 2 bar\n')
    printf("Temperature of steam = %.2f °C",120.23)
end
