// Estimation of welding speed for different materials
clc
V = 20 // applied voltage in Volt
I = 200 // Current in ampere
A = 30 // cross sectional area in mm^2
e = 0.75 // efficiency
u_al = 2.9 // specific energy of aluminium in J/mm^3
u_c = 12.3 // specific energy of carbon in J/mm^3
u_ti = 14.3// specific energy of titanium in J/mm^3
printf("\n Example 12.1")
v_al = e*V*I/(u_al*A)// velocity for aluminum in mm/s
v_c = e*V*I/(u_c*A) // velocity for carbon in mm/s
v_ti = e*V*I/(u_ti*A) // velocity for titanium in mm/s
printf("\n velocity for aluminum is %.1f mm/sec. ",v_al)
printf("\n velocity for carbon is %.1f mm/sec. ",v_c)
printf("\n velocity for titanium is %.1f mm/sec. ",v_ti)
