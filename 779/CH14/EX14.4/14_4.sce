h3 = 882; h2 = 1034;
h6 = 998; h1 = 1008;
v1 = 0.084;
h4 = h3-h1+h6; h5 = h4;
t4 = 25+273;
disp("kJ/kg",h6-h5,"Refrigeration effect is")
m = 10;
w = (m*14000)/((h6-h5)*3600); // in kg/s
disp("kg/s",w,"Refrigerant flow rate is")
v1 = 0.084;
VFR = w*3600*v1; // in kg/h
ve = 0.8; // volumetric efficiency
CD = VFR/(ve*60); // in m3/min
N = 900;
n = 2;
D = ((CD*4)/(%pi*1.1*N*n))^(1/3); // L = 1.1D L = length D = diameter
L = 1.1*D;
disp("cm",D*100,"Diameter of cylinder is")
disp("cm",L*100,"Length of cylinder is")
COP = (h6-h5)/(h2-h1);
PI = w*(h2-h1);
disp("kW",PI,"Power required to drive the compresor is")
disp(COP,"COP is")

