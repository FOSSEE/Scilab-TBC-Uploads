clear;
clc;

//page no. 300

V = 4.08;// fps
Re = 93800;//Reynolds number
r = 1;//in
m = 1/7;
R = 3;//in
f = 0.316/(Re^0.25);
v_c = V/(2/((m+1)*(m+2)));
v1 = v_c*(r/R)^(1/7);
tau_0 = f*1.935*V^2 /8;
printf('f = %.3f\n v_c = %.2f fps\n v1 = %.2f fps\n wall shear = %.3f ps',f,v_c,v1,tau_0);
