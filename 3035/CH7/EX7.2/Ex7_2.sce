// Variable Declaration

V = 400.0       //Voltage supplied(V)
i = 0.5         //Current per meter(A)
demand_f = 1.0  //Demand factor
diver_f = 1.0   //Diversity factor
L = 275.0       //Length of line(m)
pf = 0.9        //Power factor lagging

// Calculation Section
I = i*L                                                 //Current in distributor/phase(A)
theta = acos(pf)                                   //Power factor angle
V_per = 0.06*V/3**0.5                                   //Permissible voltage drop(V)

r_w = 0.985                                             //Resistance(ohm/km)
x_w = 0.341                                             //Reactance(ohm/km)
V_w = 0.5*i*(r_w*pf+x_w*sin(theta))*L**2*10**-3    //Voltage drop for Weasel(V)
d_w = 7.77                                              //Diameter of weasel conductor(mm)
area_w = %pi*d_w**2/4                               //Area of weasel conductor(mm^2)

r_f = 0.734                                             //Resistance(ohm/km)
x_f = 0.336                                             //Reactance(ohm/km)
V_f = 0.5*i*(r_f*pf+x_f*sin(theta))*L**2*10**-3    //Voltage drop for Ferret(V)
d_f = 9.00                                              //Diameter of Ferret conductor(mm)
area_f = %pi*d_f**2/4                               //Area of Ferret conductor(mm^2)

r_r = 0.587                                             //Resistance(ohm/km)
x_r = 0.333                                             //Reactance(ohm/km)
V_r = 0.5*i*(r_r*pf+x_r*sin(theta))*L**2*10**-3    //Voltage drop for Rabbit(V)
d_r = 10.0                                              //Diameter of Rabbit conductor(mm)
area_r = %pi*d_r**2/4                               //Area of Rabbit conductor(mm^2)

// Result Section
if(V_w < V_per) then
    printf('Overall cross-sectional area of the 7/2.59 mm Weasel ACSR conductors having overall conductor diameter of 7.77 mm = %.2f mm^2' ,area_w)
else if(V_f < V_per) then
    printf('Overall cross-sectional area of the 7/3.00 mm Ferret ACSR conductors having overall conductor diameter of 9.0 mm = %.2f mm^2' ,area_f)
else
    printf('Overall cross-sectional area of the 7/3.35 mm Rabbit ACSR conductors having overall conductor diameter of 10.0 mm = %.2f mm^2' ,area_r)
end
end
