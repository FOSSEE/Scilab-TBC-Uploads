clear;
clc;

//page no.85
v = 5;// fps
r = 2;
theta = 60;// degrees
x = 1;
y = sqrt(3);
v_t = v;
v_r = 0;
u = -v*y/(sqrt(x^2 + y^2));
v = v*x/(sqrt(x^2 + y^2));
a_x = -50*x/8;
a_y = -50*y/8;
a_r = -v_t^2 /r;
a_t = v_r*v_t/r;
printf('u = %.2f fps, v = %.2f fps',u,v);
printf('\n v_r = %d, v_t = %d fps',v_r,v_t);
printf('\n a_x = %.2f ft/sec^2, a_y = %.2f ft/sec^2',a_x,a_y);
printf('\n a_r = %.1f ft/sec^2, a_t = %d',a_r,a_t);
