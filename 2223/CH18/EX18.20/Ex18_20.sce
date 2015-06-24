// scilab Code Exa 18.20 Calculation on an axial turbine cascade

beta1=35; //  blade angle at entry
beta2=55; // blade angle at exit
i(1)=5; // incidence
i(2)=10;
i(3)=15;
i(4)=20;
delta=2.5; // deviation
alpha2=beta2-delta; // air angle at exit
a_r=2.5; // aspect ratio(h/l)

n=4;
for m=1:n
//part(a)
printf("\nfor incidence=%d\n",i(m))
alpha1=beta1+i(m); // air angle at entry
ep=alpha1+alpha2; // deflection angle
disp("degree",ep,"(a)flow deflection is")
p_c=0.505; //(s/l)

//part(b) loss coefficient from Hawthorne relations

z_p=0.025*(1+((ep/90)^2)); // Hawthorne's relation
disp (z_p,"(b)the profile loss coefficient from Hawthorne relation is")
z=(1+(3.2/a_r))*z_p; // the total cascade loss coefficient
disp (z,"and the total loss coefficient is")
Y=z; 

// part(c)drag and lift coefficients
alpham=atand((0.5*(tand(alpha2)-tand(alpha1))));
C_D=p_c*Y*((cosd(alpham)^3)/(cosd(alpha2)^2));
disp (C_D,"(c)the drag coefficient is")

C_L=(2*p_c*(tand(alpha1)+tand(alpha2))*cosd(alpham))+(C_D*tand(alpham));
disp (C_L,"and the Lift coefficient is")
end
