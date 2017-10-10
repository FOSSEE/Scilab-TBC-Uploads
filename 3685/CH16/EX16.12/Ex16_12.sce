
clc
T0 = 298.15 // Environment temperature in K
P0 = 1 // Atmospheric pressure in bar
R = 8.3143// Gas constant
xn2 = 0.7567  // mole fraction of nitrogen
xo2 = 0.2035 // mole fraction of oxygen
xh2o = 0.0312 // mole fraction of water
xco2 = 0.0003// mole fraction of carbon dioxide
// Part (a)
g_o2 = 0 // Gibbs energy of oxygen
g_c = 0 // Gibbs energy of carbon
g_co2 = -394380  // Gibbs energy of carbon dioxide
A = -g_co2 + R*T0*log(xo2/xco2) // Chemical energy

// Part (b)
g_h2 = 0 // Gibbs energy of hydrogen
g_h2o_g = -228590// // Gibbs energy of water
B = g_h2 + g_o2/2 - g_h2o_g + R*T0*log(xo2^0.5/xh2o)
// Chemical energy
// Part (c)
g_ch4 = -50790 // Gibbs energy of methane
C = g_ch4 + 2*g_o2 - g_co2 - 2*g_h2o_g + R*T0*log((xo2^2)/(xco2*xh2o))
// Chemical energy
// Part (d)
g_co = -137150// // Gibbs energy of carbon mono oxide
D =  g_co + g_o2/2 - g_co2 + R*T0*log((xo2^0.5)/xco2)
// Chemical energy
// Part (e)
g_ch3oh = -166240 // Gibbs energy of methanol
E = g_ch3oh + 1.5*g_o2 - g_co2 - 2*g_h2o_g + R*T0*log((xo2^1.5)/(xco2*(xh2o^2)))
// Chemical energy
// Part (f)
F = R*T0*log(1/xn2)
// Chemical energy
// Part (g)
G = R*T0*log(1/xo2)
// Chemical energy
// Part (h)
H = R*T0*log(1/xco2)
// Chemical energy
// Part (i)
g_h2o_l = -237180 //  Gibbs energy of liquid water
I = g_h2o_l - g_h2o_g + R*T0*log(1/xh2o)
// Chemical energy
printf("\n Example 6.12\n")
printf("\n The chemical energy of carbon is  %d kJ/k mol",A)
printf("\n The chemical energy of hydrogen is  %d kJ/k mol",B)
printf("\n The chemical energy of methane is  %d kJ/k mol",C)
printf("\n The chemical energy of Carbon monoxide is  %d kJ/k mol",D)
printf("\n The chemical energy of liquid methanol is  %d kJ/k mol",E)
printf("\n The chemical energy of nitrogen is  %d kJ/k mol",F)
printf("\n The chemical energy of Oxygen is  %d kJ/k mol",G)
printf("\n The chemical energy of Carbon dioxide is  %d kJ/k mol",H)
printf("\n The chemical energy of Water is  %d kJ/k mol",I)
//The answers vary due to round off error

