// At 6 MPa, 400 degree
h1 = 3177.2; s1 = 6.5408;
// At 20 degree
h0= 83.96; s0 = 0.2966;
T0 = 293;
f1 = (h1-h0)-T0*(s1-s0);
// By interpolation 
t2 = 273 + 393;
s2 = 6.63;
h2 = h1;
f2 = (h2-h0)-T0*(s2-s0);
df = f1-f2;
x3s = (s2-1.5301)/(7.1271-1.5301);
h3s = 504.7+(x3s*2201.9);
eis = 0.82;
h3 = h2-eis*(h1-h3s);
x3 = (h3-504.7)/2201.7;
s3 = 1.5301+(x3*5.597);
f3 = (h3-h0)-T0*(s3-s0);
disp("kJ/kg",f1,"The availability of the steam before the throttle valve")
disp("kJ/kg",f2,"The availability of the steam after the throttle valve")
disp("kJ/kg",f3,"The availability of the steam at the turbine exhaust")
disp("kJ/kg",h2-h3,"The specific work output from the turbine is")