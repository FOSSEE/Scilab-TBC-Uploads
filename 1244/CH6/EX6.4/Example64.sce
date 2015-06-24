

// Display mode
mode(0);

// Display warning for floating point exception
ieee(1);

clc;
disp("Principles of Heat Transfer, 7th Ed. Frank Kreith et. al Chapter - 6 Example # 6.4 ")

//Temperature of device casing in degree K
Ts = 353;
//Length of holes in m
L = 0.3;
//Diameter of holes in m
D = 0.00254;
//Inlet temperature in degree K
Tin = 333;
//Velocity in m/s
U = 0.2;

//The properties of water at 333 K, from Table 13 in Appendix 2, are

//Density in kg/m3
rho = 983;
//Specific heat in J/kgK
c = 4181;
//Thermal conductivity in W/mK
k = 0.658;
//Dynamic viscosity in Ns/m2
mu = 0.000472;
//Prandtl number
Pr = 3;

//Reynolds Number is
Re = ((U*D)*rho)/mu;

if (((Re*Pr)*D)/L)>10 then
  //Eq. (6.42) can be used to evaluate the heat transfer coefficient.
  //But since the mean bulk temperature is not known, we shall evaluate all the properties first at the inlet bulk temperature Tb1 ,
  //then determine an exit bulk temperature, and then make a second iteration to obtain a more precise value.

  //At the wall temperature of 353 K
  //Viscosity in SI units
  mus = 0.000352; 
  //From Eq. (6.42)
  //Nusselt number
  Nu = (1.86*((((Re*Pr)*D)/L)^0.33))*((mu/mus)^0.14);
  //Heat transfer coefficient in W/m2K
  hc = (Nu*k)/D;
  //mass flow rate in kg/s
  m = ((((rho*%pi)*D)*D)*U)/4;

  //Inserting the calculated values for hc and m into Energy balance equation, along with Tb1 and Ts and
  //gives Tb2=345K

  //For the second iteration, we shall evaluate all properties at the new average bulk temperature
  //Bulk temp. in degree C
  Tb = (345+Tin)/2;

  //At this temperature, we get from Table 13 in Appendix 2:
  //Density in kg/m3
  rho = 980;
  //Specific heat in J/kgK
  c = 4185;
  //Thermal conductivity in W/mK
  k = 0.662;
  //Dynamic viscosity in Ns/m2
  mu = 0.000436;
  //Prandtl number
  Pr = 2.78;

  //New reynolds Number is
  Re = ((U*D)*rho)/mu;

  //With this value of Re, the heat transfer coefficient can now be calculated.
  //We obtain the following similarly
  //Nusselt number
  Nu = 5.67;
  //Heat transfer coefficient in W/m2K
  hc = (Nu*k)/D;
  //Similarly putting this value in energy balance yields
  //Bulk temperature in degree K
  Tb2 = 345;  

  disp("Outlet temperature in degree K")
  //Outlet temperature in degree K
  Tb2
end;
