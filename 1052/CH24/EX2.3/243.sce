clc;
//Example 24.3
//page no  352
printf("Example 24.3 page no 352\n\n");
//classification of small speherical particles of charcoal with a specific gravity of 2.2
//the particles are falling in a vertical tower against a rising current of air
//we have to calculate the minimum size of charcoal that will settle down to the bottom of the tower
rho =0.075//density of air,lb/ft^3
meu=1.23e-5//viscosity of air,lb/ft.s
//assume stokes law to apply
SG=2.2//specific gravity of charcoal
rho_w=62.4//density of water 
rho_p=SG*rho_w//density of charcoal
v=15//velocity of air
g=32.2//grav. acc
D_p1=(18*meu*v/(g*rho_p))^0.5
K1 = D_p1*(g*rho*rho_p/meu^2)^(1/3)//settling factor
printf("\n settling factor K1=%f ",K1);
//from value of K,stokes law does not apply
//therefore,assume Intermediate range law applies
D_p =((v*rho^0.29*meu^0.43)/(0.153*(g*rho_p)^0.71))^(1/1.14)
printf("\n particle diameter= D_p=%f ft ",D_p);
K_n=(D_p/D_p1)*K1
printf("\n final settling factor K_n=%f",K_n)
//since the result is correct for the intermediate range
