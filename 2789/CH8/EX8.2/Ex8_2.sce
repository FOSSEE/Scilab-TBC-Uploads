clear;
clc;

//page no. 266

l = 400;// ft
h = 10;//ft
v = 30;// fps
D = 2;//lb
V = sqrt((v^2 /l)*h);
D_p = (D/V^2) *(v^2)*(l^2)/h^2;
printf('V = %.2f fps\n Prototype drag = %d lb',V,D_p);
