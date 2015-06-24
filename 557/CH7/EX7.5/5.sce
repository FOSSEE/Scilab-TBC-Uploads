clc;funcprot(0); //Example 7.5 

//Initializing the variables
rho = 1000;
r = 2;
psi = 2*log(r);

//Calculations
y = psi/log(r); // y = GammaC / 2*pi
v = y/r;
dPbydr = rho*v^2/r;
disp(dPbydr, 'Pressuer Gradient (N/m3 ) :');