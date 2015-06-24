// scilab Code Exa 18.24 Calculation on an axial compressor cascade 

beta1=51;
beta2=9;
alpha_1=7;  //  air angle at rotor and stator exit
u=100; // test section velocity of air in m/s
cx=u/(tand(alpha_1)+tand(beta1));
w1=cx/cosd(beta1);
alpha2=atand(tand(alpha_1)+tand(beta1)-tand(beta2))
c2=cx/cosd(alpha2);
Y_D=0.0367; // loss coefficient for diffuser blade row
Y_R=0.0393; // loss coefficient for rotor blade row
z_R=Y_R*((w1/u)^2);
z_D=Y_D*((c2/u)^2);
phi=cx/u;
n_st=1-(0.5*phi*(z_D*(secd(alpha2)^2)+z_R*(secd(beta1)^2))/(tand(beta1)-tand(beta2)));
disp("%",n_st*1e2,"the value of stage efficiency is")
