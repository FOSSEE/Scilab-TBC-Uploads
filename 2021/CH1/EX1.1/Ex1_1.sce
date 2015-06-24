// Finding Specific weight,Density,Specific Gravity
//Given
V=1/1000;                    //volume in m^3
w=9.6;                  //weight in Newton
g=9.81;                 //gravitational force in m/s^2
//To Find
spwt=w/V;               //Specific weoght in N/m^3
rho=spwt/g;                //density in kg/m^3
spgr=rho/1000;          //Specific gravity no units
disp("specific weight = "+string(spwt)+" N/m^3");
disp("density = "+string(rho)+" kg/m^3");
disp("specific gravity = "+string(spgr)+" no unit");
