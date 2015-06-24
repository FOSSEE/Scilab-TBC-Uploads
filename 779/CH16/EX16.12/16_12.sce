T0 = 298.15; P0 = 1; R = 8.3143;
xn2 = 0.7567; xo2 = 0.2035; xh2o = 0.0312; xco2 = 0.0003;
// Part (a)
g_o2 = 0; g_c = 0; g_co2 = -394380; 
A = -g_co2 + R*T0*log(xo2/xco2);
disp("kJ/k mol",A,"The chemical energy of carbon is")
// Part (b)
g_h2 = 0; g_h2o_g = -228590;
B = g_h2 + g_o2/2 - g_h2o_g + R*T0*log(xo2^0.5/xh2o);
disp("kJ/k mol",B,"The chemical energy of hydrogen is")
// Part (c)
g_ch4 = -50790;
C = g_ch4 + 2*g_o2 - g_co2 - 2*g_h2o_g + R*T0*log((xo2^2)/(xco2*xh2o));
disp("kJ/k mol",C,"The chemical energy of methane is")
// Part (d)
g_co = -137150;
D =  g_co + g_o2/2 - g_co2 + R*T0*log((xo2^0.5)/xco2);
disp("kJ/k mol",D,"The chemical energy of Carbonmonoxide is")
// Part (e)
g_ch3oh = -166240;
E = g_ch3oh + 1.5*g_o2 - g_co2 - 2*g_h2o_g + R*T0*log((xo2^1.5)/(xco2*(xh2o^2)))
disp("kJ/k mol",E,"The chemical energy of methanol is")
// Part (f)
F = R*T0*log(1/xn2);
disp("kJ/k mol",F,"The chemical energy of nitrogen is")
// Part (g)
G = R*T0*log(1/xo2);
disp("kJ/k mol",G,"The chemical energy of Oxygen is")
// Part (h)
H = R*T0*log(1/xco2);
disp("kJ/k mol",H,"The chemical energy of carbondioxide is")
// Part (i)
g_h2o_l = -237180;
I = g_h2o_l - g_h2o_g + R*T0*log(1/xh2o);
disp("kJ/k mol",I,"The chemical energy of water is")