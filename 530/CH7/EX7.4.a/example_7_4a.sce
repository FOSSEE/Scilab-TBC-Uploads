clear;
clc;

// A Textbook on HEAT TRANSFER by S P SUKHATME
// Chapter 7
// Heat Exchangers


// Example 7.4(a)
// Page 302
printf("Example 7.4(a), Page 302 \n \n");

// (a)
printf("(a) \n");
// Using Mean Temperature Difference approach
m_hot = 10 ; // [kg/min]
m_cold = 25 ; // [kg/min]
hh = 1600 ; // [W/m^2 K], Heat transfer coefficient on hot side
hc = 1600 ; // [W/m^2 K], Heat transfer coefficient on cold side

Thi = 70 ; // [C]
Tci = 25 ; // [C]
The = 50 ; // [C]

// Heat Transfer Rate, q
q = m_hot/60*4179*(Thi-The); // [W]

// Heat gained by cold water = heat lost by the hot water
Tce = 25 + q*1/(m_cold/60*4174); // [C]

// Using equation 7.5.13
Tm = ((Thi-Tci)-(The-Tce))/log((Thi-Tci)/(The-Tce)); // [C]
printf("Mean Temperature Difference = %f C \n",Tm);

U = 1/(1/hh + 1/hc); // [W/m^2 K]
A = q/(U*Tm); // Area, [m^2]
printf("Area of Heat Exchanger = %f m^2 \n",A);
