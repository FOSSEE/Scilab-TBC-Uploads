//Ex:33
clc;
clear;
close;
e_irp=52;//EIRP  in dbW
p_s=10^(e_irp/10);//effective isotropic radiated power in W
printf("effective isotropic radiated power=%f KW",p_s/1000);