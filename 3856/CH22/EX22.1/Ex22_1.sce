//Calculate the molar mass of Catalase 

//Eaxmple 22.1

clc;

clear;

R=8.314;  //Gas constant in J K^-1 mol^-1

T=20+273;  //Temperature in K

D=4.1*10^-11; //Diffusion coefcient of Catalase (horse liver) in m^2 s^-1

rho=0.998; //Density of water in g ml^-1

s=11.3*10^-13; //Sedimentation coeffcient in s

vbar=0.715; //Partial specific volume in ml g^-1

mew=(s*R*T*1000)/((D)*(1-(vbar*rho))); //Molar mass of Catalase in g mol^-1 (1 J=1 kg m^2 s^-2)(The answer vary due to round off error )

printf("Molar mass of Catalase = %.2f*10^5 g mol^-1",mew*10^-5);
