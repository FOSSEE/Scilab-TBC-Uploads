// for T = 350 degree
T1 = 350; v1 = 0.2003; h1 = 3149.5; s1 = 7.1369;
// for T = 400 degree
T2 = 400; v2 = 0.2178; h2 = 3257.5; s2 = 7.3026;
// Interpolation for T = 380;
T = [T1 T2];
v = [v1 v2];
h = [h1 h2];
s = [s1 s2];
v3 = interpln([T;v],380);
h3 = interpln([T;h],380);
s3 = interpln([T;s],380);
disp("m3/kg respectively",v3,"kJ/kg",h3,"kJ/kg K",s3,"The entropy, enthalpy and volume of stem at 1.4MPa and 380 degree is")

