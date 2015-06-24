clc
clear 
printf("example 8.10 page number 370\n\n")

//to find the rate of oil flow in l/s

density_oil=900;       //in kg/m3
viscosity_oil=38.8*10^-3;    //in Pa-s
density_water = 1000;       //in kg/m3
diameter=0.102              //in m
manometer_reading=0.9;       //m of water
delta_H=manometer_reading*(density_water-density_oil)/density_oil;
printf("manometer reading as m of oil = %f m",delta_H)

maximum_velocity=(2*9.8*delta_H)^0.5;
printf("\n\nmaximum_velocity(Vmax) = %f m/s",maximum_velocity)

Re=diameter*maximum_velocity*density_oil/viscosity_oil;
printf("\n\nif Re<4000 then v=0.5*Vmax Re = %f",Re)
if Re<4000 then velocity=maximum_velocity*0.5;
end

printf("\n\nvelocity = %f m/s",velocity)

flow_rate=(3.14/4)*diameter^2*velocity*1000;
printf("\n\nflow rate =%f litre/s",flow_rate)
