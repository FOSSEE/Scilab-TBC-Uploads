clear;
clc;

//page no. 194

gam = 0.0765;// lb/cuft
V1 = 293;//fps
hp = 1500;
h = 10;//ft
V4 = 338;//fps

V = 0.5*(V1+V4);
Q = hp*550/((V4-V1)*V*gam/32.2);
d1 = sqrt(Q/(V1*0.25*%pi));
d4 = sqrt(Q/(V4*0.25*%pi));
F = Q*(gam/32.2)*(V4-V1);
eta = V1/V;

printf('V4 = %d fps,\n V = %.1f fps,\n d1 = %.1f ft,\n d4 = %.2f ft,\n F = %d lb,\n efficiency = %.1f percentage',V4,V,d1,d4,F,eta*100);

//there are small errors in the answer given in textbook
