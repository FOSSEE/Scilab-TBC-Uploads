clear;
clc;

//page no. 285

T = 100;// degreeF
d = 3;// inches
Re = 80000;// Reynolds number
e = 0.006;// inches
l = 1000;//feet
f1 = 0.021;//friction factor
nu = 0.729*10^-5;// sqft/sec
V = Re*nu/0.25;
h_L1 = f1*(l/0.25)*(V^2 /(2*32.2));
f = 0.316/Re^0.25;
h_L = (f/f1)*h_L1;
printf('Head loss expected = %.1f ft\n and head loss expected if the pipe were smooth = %.2f ft',h_L1,h_L);
