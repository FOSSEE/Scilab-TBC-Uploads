// scilab Code Exa 18.24 Calculation on an axial compressor cascade 

R=0.5906; // Degree of reaction
beta1=66;
beta2=22;
alpha2=61;
p_R=0.865; // pitch-chord ratio(s/l) for rotor
p_S=0.963; // pitch-chord ratio(s/l) for stator
alpha_3=beta2; //  air angle at rotor and stator exit
u=100; // test section velocity of air in m/s
Y_D=0.077; // profile loss coefficient for stator blade row
Y_R=0.08; // loss coefficient for rotor blade row
beta_m=atand(0.5*(tand(beta1)+tand(beta2)));
C_D_R=p_R*Y_R*(cosd(beta_m)^3)/(cosd(beta1)^2);
C_L_R=(2*p_R*(tand(beta1)-tand(beta2))*cosd(beta_m))-(C_D_R*tand(beta_m));
n_R=1-(2*C_D_R/(C_L_R*sind(2*beta_m)));
disp("%",n_R*1e2,"the value of rotor cascade efficiency is")

alpham=atand(0.5*(tand(alpha2)+tand(alpha_3)));
C_D_S=p_S*Y_D*(cosd(alpham)^3)/(cosd(alpha2)^2);
C_L_S=(2*p_S*(tand(alpha2)-tand(alpha_3))*cosd(alpham))-(C_D_S*tand(alpham));
n_D=1-(2*C_D_S/(C_L_S*sind(2*alpham)));
disp("%",n_D*1e2,"the value of diffuser cascade efficiency is")

n_st=R*n_R+(1-R)*n_D;
disp("%",n_st*1e2,"the value of stage efficiency is")
