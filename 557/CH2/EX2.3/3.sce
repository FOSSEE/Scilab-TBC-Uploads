clc ;funcprot(0);
//Example 2.3  

//Initializing the variables
p1 = 101*10^3;//Initial Pressure
z1 = 0;//Initial Height
z2 = 1200;//Final Height
T1 = 15+273;//Initial Temperature
g = 9.81;//Acceleration due to gravity
gamma = 1.4;//Heat capacity ratio
R = 287;//Gas Constant

//Calculations
p2 = p1*(1-g*(z2-z1)*(gamma-1)/(gamma*R*T1))^(gamma/(gamma-1));
dT_dZ = -(g/R)*((gamma-1)/gamma);
T2 = T1 + dT_dZ*(z2-z1);
disp(T2-273,"Density at 1200 m (in degree celcius) :",p2/1000,"Final Pressure(kN/m2) :");
