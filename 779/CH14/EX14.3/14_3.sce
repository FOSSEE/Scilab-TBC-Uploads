h1 = 183.19; h2 = 209.41; h3 = 74.59; h4 = h3;
T1 = 313; T2 = 263;
W = 70000/3600; // Plant capacity in kW
w = W/(h1-h4); // Refrigerant flow rate
v1 = 0.077;
VFR = w*v1;
T = 48; // in degree
P2 = 9.6066; P1 = 2.1912;
rp = P2/P1; // Pressure ratio
Q1 = w*(h2-h3);
hf = 26.87; hfg = 156.31;
x4 = (h4-hf)/hfg;
COP = (h1-h4)/(h2-h1);
PI = w*(h2-h1);
COP = T2/(T1-T2);
COP_v = 4.14;
r = COP_v/COP;
disp("kg/s",w,"Refrigerant flow rate is")
disp("m3/s",VFR,"Volume flow rate is")
disp("degree",T,"Compressor discharge temperature is")
disp(rp,"Pressure ratio is")
disp("kW",Q1,"Heat rejected to the condenser is")
disp("%",x4*100,"Flash gas percentage is")
disp(COP,"COP is")
disp("kW",PI,"Power required to drive the compressor is")
disp(r,"Ratio of COP of carnot refrigerator is")



