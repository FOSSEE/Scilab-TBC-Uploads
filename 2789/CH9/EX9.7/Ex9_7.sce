clear;
clc;

//page no. 298

d = 12;// in
v = 10;//fps
e = 2;//in
k = 0.002;//relative roughness
l = 1000;//ft
f = (1/(1.14+2*log10(1/k)))^2;
v_c = v*(1+4.07*sqrt(f/8));
tau_0 = f*1.935*v^2 /8;
v2 = v_c - tau_0*5.75*log10(0.5*d/e);
v2_ = 8.48*tau_0 + tau_0*5.75*log10(e/(12*k));
h_L = f*(l)*v^2 /(2*32.2); 
printf('f = %.4f\n v_c = %.2f fps\n v2 = %.1f fps\n h_L = %.1f ft of water',f,v_c,v2_,h_L);

//there are small errors in the answer given in textbook
