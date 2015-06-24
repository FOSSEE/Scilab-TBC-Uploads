clc;
//Example 24.10
//page no 362
printf("Example 24.10 page no 362\n\n");
//air is being dried by bubbling through concentrated NaOH
q=4/60//flow rate of air,ft^3/min
D=2.5/12//diameter of tube
S=(%pi/4)*D^2//cross sectional area
v=q/S//velocity of air,ft/s
meu=1.23e-5//viscosity of NaOH
rho=0.0775//density of air
g=32.2//grav. acc.
SG=1.34//specific gravity of NaOH
rho_w=62.4//density of water
rho_p=SG*rho_w//density of NaOH
D_p_max = [v*(rho^0.29)*(meu^0.43)/(0.153*(g*rho_p)^0.71)]^(1/1.14)//assuming that the intermediate range applies ,maximum diamter of particle
printf("\nD_p_max=%f ",D_p_max);
//settling factor 
K=D_p_max*(g*rho*rho_p/(meu^2))^(1/3)
printf("\n settling factor K=%f ",K);
//tus result for D_p_max is correct
