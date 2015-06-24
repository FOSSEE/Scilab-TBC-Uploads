clear;
clc;
//page no. 266

Tw = 32;// degreeF
d1 = 3;// in
v = 10;//fps
delp = 2;//psi
h1 = 30;// ft
Tb = 68;//degreeF
d2 = 1;//in
h2 = 10;//ft
V = v*(d1/12)*0.0000137/((d2/12)*0.88*0.0000375);
del_p = delp/h2^2 *0.88*V^2;
printf('V = %.2f fps\n del_p = %.2f psi',V,del_p);


