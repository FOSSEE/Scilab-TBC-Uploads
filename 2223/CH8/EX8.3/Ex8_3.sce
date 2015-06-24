// scilab Code Exa 8.3 Calculation on a compressor cascade
theta=25; // Camber angle
gamma_a=30; // stagger angle
i=5; // incidence
t_c=0.031; // momentum thickness-chord ratio(t/l)
p_c=1; // pitch-chord ratio

//part(a)cascade blade angles
beta1=((2*gamma_a)+theta)*0.5; //  blade angle at entry
beta2=((2*gamma_a)-theta)*0.5; // blade angle at exit
disp ("(a)therefore, the blade angles are")
disp ("degree",beta1,"beta1=")
disp ("degree",beta2,"beta2=")

//part(b) the nominal air angles
alpha1=beta1+i; // air angle at entry
alpha2=atand(tand(alpha1)-(1.55/(1+(1.5*p_c)))); // air angle at exit
disp ("(b)therefore, the air angles are")
disp ("degree",alpha1,"alpha1=")
disp ("degree",alpha2,"alpha2=")

//part(c) stagnation pressure loss coefficient
Y=2*t_c*p_c*(cosd(alpha1)^2)/(cosd(alpha2)^3);
disp (Y,"(c)the stagnation pressure loss coefficient is")

// part(d)drag coefficient
alpham=atand(0.5*(tand(alpha1)+tand(alpha2)));
C_D=p_c*Y*(cosd(alpham)^3)/(cosd(alpha1)^2);
disp (C_D,"(d)the drag coefficient is")

// part(e)Lift coefficient
C_L=(2*p_c*(tand(alpha1)-tand(alpha2))*cosd(alpham))-(C_D*tand(alpham));
disp (C_L,"(e)the Lift coefficient is")
