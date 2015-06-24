// scilab Code Exa 18.32 IFR turbine stage efficiency

// part(b)
R=0.48;
sigma_s=0.6;
n_n=0.92;
alpha_2=15;  //  air angle at nozzle exit(from tangential direction)
n_st=2*sigma_s*sqrt(n_n*(1-R))*cosd(alpha_2);
disp("%",n_st*100,"stage efficiency of the radial turbine is")
