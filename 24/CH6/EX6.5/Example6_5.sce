//Given that
g = 9.8  //in m/s^2
Radius = 1.5 * 10^-3  //in meter
height = 1200  //in meter
C_drag = 0.60
density_water = 1000  //in kg/m^3
density_air = 1.2  //in kg/m^3

//Sample Problem 6-5a
printf("**Sample Problem 6-5a**\n")
//v_t = sqrt(2*F_g/(C*density*A))
volume_drop = 4/3*%pi*Radius^3
mass_drop = density_water *volume_drop
Area_drop = %pi *Radius^2
v_terminal = sqrt(2*mass_drop*g/(C_drag*density_air*Area_drop))
printf("The terminal velocity will be %f m/s\n", v_terminal)

//Sample Problem 6-5b
printf("\n**Sample Problem 6-5b**\n")
v_without_drag = sqrt(2 *g * height)
printf("The velocity just before the impact if there were no drag force would be %f m/s", v_without_drag)