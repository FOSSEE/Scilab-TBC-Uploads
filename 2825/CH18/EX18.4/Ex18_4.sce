//Ex18_4 Pg-946
clc

w=0.3*10^(-6)*100 //width of silicon in cm
alpha=4*10^(4) 
phi=10^(-2)
e=1.6*10^(-19) //electron charge in eV

disp("(1) Energy absorbed/sec is given by ")
E=phi*(1-exp(alpha*w)) //energy absorbed(textbook answer is wrong)
printf("                = %.1f mW \n",abs(E)*1e3)

disp("(2) The portion of each photo energy that is converted into heat is obtained as hv-Eg/hv")
Heat=(3-1.12)/3*100 //photon energy coverted to heat
printf("                = %.0f %%",Heat)
E1=(62/100)*0.0232 //energy dissipated/sec (textbook answer is wrong)
printf("\n Obviously, the amount of energy dissipated/sec to lattice \n is %.1f mW \n",E1*1e3)

disp("(3) Number of photons/sec from recombination is")
num_photons=2.4/(e*1.12)
printf("                = %.1f*1e19 photon/sec \n",num_photons*1e-19)
//textbook answer is wrong

disp("Therefore recombination radiation")
RR=abs(E)-E1 //recombination radiation (textbok answer is wrong)
printf("                = %.1f mW",RR*1e3)
