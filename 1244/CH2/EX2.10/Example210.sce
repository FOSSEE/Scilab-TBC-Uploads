

// Display mode
mode(0);

// Display warning for floating point exception
ieee(1);

clc;
disp("Principles of Heat Transfer, 7th Ed. Frank Kreith et. al Chapter - 2 Example # 2.10 ")

//Diameter of copper wire in m
D = 0.1/100;
//Initial temperature in degree C
To = 150;
//Final surrounding temperature in degree C of air and water
Tinfinity = 40;

//From table 12, appendix 2, we get the following data values for copper
//Thermal conductivity in W/mK
k = 391;
//Specific heat in J/kgK
c = 383;
//Density in kg/m3
rho = 8930;

//Surface area of wire per unit length in m
A = %pi*D;
//Volume of wire per unit length in m2
V = ((%pi*D)*D)/4;

//Heat transfer coefficient in the case of water in W/m2K
h = 80;
//Biot number in water
bi = (h*D)/(4*k);
//The temperature response is given by Eq. (2.84)

//For water Bi*Fo is 0.0936t
//For air Bi*Fo is 0.0117t

for i = 1:130
  //Position of grid
  x(1,i) = i;
  // Temperature of water in degree C
  Twater(1,i) = Tinfinity+(To-Tinfinity)*exp(-0.0936*i);
  // Temperature of air in degree C
  Tair(1,i) = Tinfinity+(To-Tinfinity)*exp(-0.0117*i);
end;
//Plotting curve
plot(x,Twater,"--r")
set(gca(),"auto_clear","off")
//Plotting curve
plot(x,Tair)
//Labelling axis
xlabel("time")
ylabel("temperature")
disp("Temperature drop in water is more than that of air")
