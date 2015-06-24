clear;
clc;

//page no. 290

Q = 100;//gallons per minute
sg = 0.90;
nu = 0.0012;// lb-sec/sqft
d = 3;// in
l = 1000;//ft
r = 1;//in
V = 4.53;//fps
Re = V*(d/12)*sg*1.935/nu;
h_L = (64/Re)*(12*l/d)*(V^2 /(2*32.2));
v = 2*V*(1 - (2/d)^2);
tau = 62.4*sg*h_L/(2*l*12);
printf('v = %.2f fps\n h_L = %.1f ft of oil\n tau = %.3f psf',v,h_L,tau);
