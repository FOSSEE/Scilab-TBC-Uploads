// scilab Code Exa 11.3 Calculation on an axial compressor stage

// part(c) Verification of stage efficiency of exa 11.1
beta1=54.82;
alpha_1=25;
beta2=alpha_1; 
alpha_2=beta1;
phi=0.53; // Flow coefficient
YR=0.09; // loss coefficient for the blade rows
n_st=1-((phi*YR*(secd(beta1)^2))/(tand(beta1)-tand(beta2)))
disp("%",n_st*1e2,"stage efficiency n_st=")
// part(d) Determining efficiencies of the rotor and Diffuser blade rows
n_D=1-(YR/(1-((secd(alpha_1)^2)/(secd(alpha_2)^2))))
disp ("%",n_D*100," Efficiency of the diffuser n_D=n_R=")
