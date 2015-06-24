// scilab Code Exa 18.21 low reaction turbine stage

Beta2=35; // rotor blade air angle in degree
alpha1=0; // fixed blade air angle in degree
alpha2=65;
beta3=52.5;
I(1)=0; // incidence angle
I(2)=5;
I(3)=10;
I(4)=15;
I(5)=20;
a_r=2.5; // aspect ratio(h/l)

for i=1:5
disp("degree",I(i),"when incidence=")
beta2(i)=Beta2+I(i); // beta2 varies with incidence

//part(a)
phi=cosd(alpha2)*cosd(beta2(i))/(sind(alpha2-beta2(i)));
ep=alpha1+alpha2; // deflection angle
disp(phi,"(a)flow coefficient is")
p_c=0.505; //pitch-chord ratio(s/l)

//part(b)blade to gas speed ratio
sigma=sind(alpha2-beta2(i))/(cosd(beta2(i)));
disp(sigma,"(b)blade to gas speed ratio is")
z_N=2.28*0.025*(1+((ep/90)^2)); // Hawthorne's relation

// part(c)degree of reaction
R=0.5*phi*(tand(beta3)-tand(beta2(i)));
disp("%",R*1e2,"(c)the degree of reaction is")

// part(d)total-to-total efficiency
e_R=beta2(i)+beta3; // Rotor deflection angle
zeeta_p_R=0.025*(1+((e_R/90)^2)); // profile loss coefficient for rotor
zeeta_R=(1+(3.2/a_r))*zeeta_p_R; // total loss coefficient for rotor
a=(zeeta_R*(secd(beta3)^2))+(z_N*(secd(alpha2)^2));
b=phi*(tand(alpha2)+tand(beta3))-1;
n_tt=inv(1+(0.5*(phi^2)*(a/b)));
disp("%",n_tt*1e2,"(d)total-to-total efficiency is")

end

