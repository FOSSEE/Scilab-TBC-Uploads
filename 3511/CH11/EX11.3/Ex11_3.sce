clc;
alpha_2=65; // Nozzle discharge angle in degree
c3=300; // Absolute velocity in m/s
alpha_3=30; // in degrees

ca2=c3*cosd (alpha_3); // Axial velocity
c2=ca2/cosd(alpha_2); //  Absolute velocity
// ca3=ca2=ca and equal blade angles then
ca=ca2;
beta_2=atand((c2*sind(alpha_2)+c3*sind(alpha_3))/(2*ca)); // Blade angle
beta_3=beta_2; // equal blade angles
u=c2*sind(alpha_2)-ca2*tand(beta_2); // Mean blade velocity
// From velocity triangles
ct2=c2*sind(alpha_2);
ct3=c3*sind(alpha_3);
WT=u*(ct2+ct3)/1000; // Work done
sigma=u/c2; // optimum speed ratio
eff_B=4*(sigma*sind(alpha_2)-sigma^2);

disp ("degree",beta_2,"Blade angle = beta_2= beta_3 = ");
disp ("kJ/kg   (roundoff error)",WT,"Power Produced = ");
disp ("%",eff_B*100,"Blade efficiency = ");
