// Estimating the temperature of the hot spot
clc;
disp('Example 4.6, Page No. = 4.11')
// Given Data
t = 0.5;// Plate width of transformer core in meter
Ki = 0.94;// Stacking Factor
p_core = 3;// Core loss in Watt per kg
thermal_conductivity = 150;// Thermal conductivity in Watt per degree celsius
Ts = 40;// Surface temperature in degree celsius
D = 7800;// Density of steel plate in kg per meter cube
// Calculation of the temperature of the hot spot
q = p_core*Ki*D;// Core loss per unit volume (Watt per meter cube)
p = 1/thermal_conductivity;// thermal resistivity
x =t;// Since heat is taken all to one end
Tm = (q*p*x*x/2)+Ts;// Temperature of the hot spot, if heat is taken all to one end (degree celsius)
disp(Tm,'(a)   Temperature of the hot spot, if heat is taken all to one end (degree celsius)=');
//in book answers is 58.3 degree celsius.  The answers vary due to round off error
x =t/2;// Since heat is taken to both the directions
Tm = (q*p*x*x/2)+Ts;// Temperature of the hot spot, if heat is taken to both the directions (degree celsius)
disp(Tm,'(b)   Temperature of the hot spot, if heat is taken to both the directions (degree celsius)=');
//in book answers is 44.6 degree celsius.  The answers vary due to round off error
