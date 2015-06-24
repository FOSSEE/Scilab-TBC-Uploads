

// Display mode
mode(0);

// Display warning for floating point exception
ieee(1);

clc;
disp("Principles of Heat Transfer, 7th Ed. Frank Kreith et. al Chapter - 7 Example # 7.5 ")

//Initial temperature in degree F
Ti = 58;
//Final temperature in degree F
Tf = 86;
//Film temperature of air in degree F
Tair = (Ti+Tf)/2;
//Temperature of condensing steam in degree F
Tsteam = 212;
//Heat transfer coeffcient in Btuh/ft2F
ho = 1000;
//Length of tube in ft
L = 2;
//Diameter of tube in in
d = 0.5;
//Wall thickness in inches
t = 0.049;
//Pitch in inches
p = 3/4;
//Width in ft and height in inches of rectangular shell
H = 15;
W = 2;
//Mass flow rate of air in lb/h
m = 32000;

//Appendix 2, Table 28 then gives for the properties of air at this mean
//bulk temperature

//Density in lb/ft3
rho = 0.072;
//Thermal conductivity in Btu/h F ft
k = 0.0146;
//Dynamic viscosity in lb/fth
mu = 0.0444;
//Prandtl number for air and steam
Pr = 0.71;

//Calcaulating minimum free area in ft2
A = ((H/p)*W)*((p-d)/12);
//Maximum gas velocity in lb/h.ft2
Gmax = m/A;
//Hence the reynolds number is
Re = (Gmax*d)/(12*mu);

//Assuming that more than 10 rows will be required, the heat transfer coefficient is calculated from Eq. (7.29)

//h value in Btu/h ft2 F
h = ((((k*12)/d)*(Pr^0.36))*0.27)*(Re^0.63);

//The resistance at the steam side per tube in h F/Btu
R1 = 12/(((ho*%pi)*(d-2*t))*L);

//The resistance of the pipe wall in h F/Btu
R2 = 0.049/(((60*%pi)*L)*(d-t));

//The resistance at the outside of the tube in h F/Btu
R3 = 1/((((h*%pi)*d)*L)/12);

//Total resistance in h F/Btu
R = R1+R2+R3;

//Mean temperature difference between air and steam in degree F is
deltaT = Tsteam-Tair;

//Specific heat of air in Btu/lb F
c = 0.241;

//Equating the rate of heat flow from the steam to the air to the rate of enthalpy rise of the air

//Solving for N gives
disp("Total number of transverse tubes needed are")
//Total number of transverse tubes
N = (((m*c)*(Tf-Ti))*R)/(20*deltaT)
disp("Rounding off = 5 tubes")

if N<10 then
  //Correction for h value, again in Btu/h ft2 F
  h = 0.92*h;
end;

//The pressure drop is obtained from Eq. (7.37) and Fig. 7.25.

//Velocity in ft/s
Umax = Gmax/(3600*rho);
//Acceleration due to gravity in ft/s2
g = 32.2;
disp("Corresponding pressure drop in lb/ft2")
//Corresponding pressure drop in lb/ft2
P = ((((6*0.75)*rho)*Umax)*Umax)/(2*g)
