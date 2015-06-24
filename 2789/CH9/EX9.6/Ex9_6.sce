clear;
clc;

//page no. 295

Q = 90;// gallons per minute
T = 68;//degreeF
d = 3;// in
l = 3000;//ft
r = 1;// in
f = 0.018;
V = Q/(60*7.48*0.25*%pi*(d/12)^2);
Re = V*(d/12)*1.935/(0.000021);
h_L = f*(l/0.25)*(V^2 /(2*32.2));
tau_0 = f*1.935*V^2 /8;
tau1 = 2*tau_0/d;
v_c = V*(1+4.07*sqrt(f/8));
v_ = sqrt(tau_0/1.935);
v1 = v_*(5.50+5.75*log10(v_*(r/(2*12))/0.00001085));
v1_ = v_c-v_*5.75*log10(0.5*d/(r/2));
delta = d*32.8/(Re*sqrt(f));
printf('Head lost = %.1f ft of water\n Wall shear stress = %.3f psf\n the center velocity = %.2f fps\n shearing stress = %.3f psf\n v1 = %.2f fps\n delta = %.4f in.',h_L,tau_0,v_c,tau1,v1_,delta);
