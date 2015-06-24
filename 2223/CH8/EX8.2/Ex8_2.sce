// scilab Code Exa 8.2 Calculation on a turbine blade row cascade

beta1=35; //  blade angle at entry
beta2=55; // blade angle at exit
i=5; // incidence
delta=2.5; // deviation
alpha1=beta1+i; // air angle at entry
alpha2=beta2-delta; // air angle at exit
t_c=0.3; // maximum thickness-chord ratio(t/l)
a_r=2.5; // aspect ratio

//part(a)optimum pitch-chord ratio from Zweifels relation
C_z=0.8; // from Zweifel's relation 
p_c=C_z/(2*(cosd(alpha2)^2)*(tand(alpha1)+tand(alpha2)));
disp (p_c,"(a)the optimum pitch-chord ratio from Zweifels relation is")

//part(b) loss coefficient from Soderbergs and Hawthorne relations
ep=alpha1+alpha2; // deflection angle
Zeeta=0.075;
b=(1+Zeeta)*(0.975+(0.075/a_r))
zeeta=b-1;
disp (zeeta,"(b)(i)the loss coefficient from Soderbergs relation is")
z_p=0.025*(1+((ep/90)^2)); // Hawthorne's relation
disp (z_p,"(b)(ii)the loss coefficient from Hawthorne relation is")
z=(1+(3.2/a_r))*z_p; // the total cascade loss coefficient
Y=0.5*(z+zeeta); 

// part(c)drag coefficient
alpham=atand(0.5*(tand(alpha2)-tand(alpha1)));
C_D=p_c*Y*(cosd(alpham)^3)/(cosd(alpha2)^2);
disp (C_D,"(c)the drag coefficient is")

// part(d)Lift coefficient
C_L=(2*p_c*(tand(alpha1)+tand(alpha2))*cosd(alpham))+(C_D*tand(alpham));
disp (C_L,"(d)the Lift coefficient is")
