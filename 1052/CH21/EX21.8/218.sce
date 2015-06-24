clc;
//Example 21.8
//page no 285
printf("Example 21.8 page no 285\n\n");
//water flowing through a pipe
rho=62.4//density of water,lb/ft^3
meu=6.72e-4//viscosity of water,lb/ft.s
q_1gpm=1.5//vol. flow rate in gpm
q_2gpm=6//vol. flow rate in gpm 
D_1=0.493//internal diameter of 3/8 in schdule pipe
v11=(0.409*q_1gpm)/(D_1^2)//flow velocity for an 3/8 in pipe with 1.5 gpm flow rate  
v12=(0.409*q_2gpm)/(D_1^2)//flow velocity for an 3/8 pipe with 6 gpm flow
R_e11=D_1*v11*rho/meu//reynolds no for case 11
R_e12=D_1*v12*rho/meu//reynolds no for case 12
printf("\n reynolds no R_e11=%f\n reynolds no R_e12=%f  ",R_e11,R_e12);//printing mistake in book
D_2=0.622//internal diameter of  1/2 in schdule pipe 
v21=(0.409*q_1gpm)/D_2^2//flow velocity for 1/2 pipe with 1.5 gpm
v22=(0.409*q_2gpm)/D_2^2//flow velocity for 1/2 pipe with 6 gpm
R_e21=D_2*v21*rho/meu//reynolds no for case 21
R_e22=D_2*v22*rho/meu//reynolds no foe case 22
printf("\n reynolds no R_e21=%f\n reynolds no R_e22=%f",R_e21,R_e22);
//printing mistake in value of R_e
