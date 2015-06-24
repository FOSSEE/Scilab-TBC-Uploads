clc
//Initialization of variables
H=-169182 //Btu/mole
s1=1.3609 //Btu/mole R
s2=49.003 //Btu/mole R
s3=51.061 //Btu/mole R
T=537 //R
//calculations
dG=H-T*(s3-s2-s1)
//results
printf("Change in Gibbs energy = %d Btu/mole carbon",dG)
