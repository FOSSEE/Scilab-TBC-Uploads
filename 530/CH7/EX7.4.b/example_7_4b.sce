clear;
clc;

// A Textbook on HEAT TRANSFER by S P SUKHATME
// Chapter 7
// Heat Exchangers


// Example 7.4(b)
// Page 302
printf("Example 7.4(b), Page 302 \n \n");

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
U = 1/(1/hh + 1/hc); // [W/m^2 K]
A = q/(U*Tm); // Area, [m^2]

m_hot = 20 ; // [kg/min]
// Flow rate on hot side i.e. 'hh' is doubled
hh = 1600*2^0.8 ; // [W/m^2 K]
U = 1/(1/hh + 1/hc); // [W/m^2 K]
m_hC_ph =  m_hot/60*4179 ; // [W/K]
m_cC_pc = m_cold/60*4174 ; // [W/K]
// Therefore
C = m_hC_ph/m_cC_pc ;
NTU = U*A/m_hC_ph ;
printf("NTU = %f \n",NTU);

// From equation 7.6.8
e = [1 - exp(-(1+C)*NTU)]/(1+C) ;

// Therefore (Thi - The)/(Thi - Tci) = e , we get
The = Thi - e*(Thi - Tci); // [C]

// Equating the heat lost by water to heat gained by cold water , we get
Tce = Tci + [m_hC_ph*(Thi-The)]/m_cC_pc;
printf("Exit temperature of cold and hot stream are %f C and %f C respectively.",Tce,The);

