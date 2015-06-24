clear;
clc;

//page no. 203

r1 = 5;//ft
r2 = 3.5;//ft
beta1 = 60;//degrees
beta2 = 150;//degrees
t = 1;//ft
alpha1 = 15;//degree
Q = 333;//cfs
gam = 0.434;

V_r1 = Q/(2*%pi*r1);
V_r2 = Q/(2*%pi*r2);
V_t1 = V_r1*(1/tan(alpha1*%pi/180));
u1 = V_t1 - V_r1*tan((90-beta1)*%pi/180);
omega = u1/r1;
u2 = omega*r2;
V_t2 = u2 - V_r2*(1/tan((90-beta1)*%pi/180));
T = Q*1.935*(V_t1*r1 - (V_t2*r2));
hp = T*omega/550;
E_T = hp*550/(Q*62.4);
V1 = sqrt(V_r1^2 + V_t1^2);
V2 = sqrt(V_r2^2 + V_t2^2);
del_p = E_T*gam + (gam/(2*32.2))*(V2^2 - V1^2);

printf('V1 = %.1f fps,\n V2 = %.1f fps,\n T = %d ft-lb,\n hp = %d lb,\n E_T = %.1f ft-lb/lb,\n p1-p2 = %.1f psi',V1,V2,T,hp,E_T,del_p);

//there are small errors in the answer given in textbook
