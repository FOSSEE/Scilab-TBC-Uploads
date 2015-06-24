clear;
clc;

//page no.409

C_I = 0.98;//coefficient of pitot tube
d = 3;//in

del_p = (d/12)*(13.55-0.88)/0.88;
v_c = C_I*sqrt(2*32.2*del_p);

printf('The velocity at the centerline of the pipe = %.1f fps',v_c);
