clc;
//Example 21.16
//page no 291
printf("Example 21.16 page no 291\n\n");
//water flows in a concrete pipe
v_p=0.02// flow velocity,m/s 
D_p=1.5//diameter of pipe
L_p=20//length of pipe,m
rho_p=1000//density of water,kg/m^3
meu_p=0.001//viscosity of water,kg/m.s
K_p=0.003//roughnes factor,m
//this prototype is to be modeled in a lab using a 1/3o th scale pipe
D_m=D_p/30//D_m is diameter of modeled pipe
L_m=L_p*(D_m/D_p)//length of modeled pipe
K_m=K_p*(D_m/D_p)//roughness factor for modeled pipe
//the fluid in the model is caster oil 
rho_m=961.3//densiy of oil, kg/m^3
meu_m=0.0721//viscosity of oil,kg/m.s
//since R_e = (rho_m*v_m*D_m)/meu_m   =  (rho_p*v_p*D_p)/meu_p
v_m = (rho_p*v_p*D_p*meu_m)/(rho_m*D_m*meu_p)// flow velcity in molded pipe
printf("\n flow velocity v_m=%f m/s",v_m);
//pressure drop in prototype
P_drop_m=1e+5//pressure drop in model
P_drop_p=(P_drop_m*rho_p*(v_p)^2)/(rho_m*(v_m)^2)//pressure drop in prototype
printf("\n pressure drop in prototype P_drop_p=%f Pa",P_drop_p);
