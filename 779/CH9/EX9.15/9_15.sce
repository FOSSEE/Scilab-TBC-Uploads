// At 25 bar, 350 degree
h1 = 3125.87; s1 = 6.8481;
// 30 degree
h0 = 125.79; s0 = 0.4369;
// At 3 bar, 200 degree
h2 = 2865.5; s2 = 7.3115;
// At 0.2 bar 0.95 dry
hf = 251.4; hfg = 2358.3;
sf = 0.8320; sg = 7.0765;
h3 = hf+0.92*hfg;
s3 = sf+(0.92*sg);
// Part (a)
T0 = 303;
f1 = (h1-h0)-(T0*(s1-s0));
f2 = (h2-h0)-(T0*(s2-s0));
f3 = (h3-h0)-(T0*(s3-s0));
disp("kJ/kg",f1,"Availability of steam entering at state 1")
disp("kJ/kg",f2,"Availability of steam leaving  at state 2")
disp("kJ/kg",f3,"Availability of steam leaving  at state 3")
// Part (b)
m2m1 = 0.25; m3m1 = 0.75;
Wrev = f1-(m2m1*f2)-(m3m1*f3);
disp("kJ/kg",Wrev,"Maximum work is")
// Part (c)
w1 = 600; w2 = 150; w3 = 450;
Q = -10*3600;  // For 1 hour
I = T0*(w2*s2+w3*s3-w1*s1)-Q;
disp("kJ/h",I,"Irreversibility is")
