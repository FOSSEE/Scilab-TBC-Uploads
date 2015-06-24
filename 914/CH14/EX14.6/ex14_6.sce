clc;
warning("off");
printf("\n\n example14.6 - pg732");
// given
T=423.2;  //[K] - temperature
P=5;  //[atm] - pressure
Ma=4.0026;  //[kg/mole] - molecular weight of helium
Mb=60.09121;  //[kg/mole] - molecular weight of propanol
Dab_experimental=1.352*10^-5;  //[m^2/sec] - experimental value of diffusion coefficient of helium-proponal system
// the diffusion volumes for carbon , hydrogen and oxygen are-
Vc=16.5;
Vh=1.98;
Vo=5.48;
V_A=3*Vc+8*Vh+Vo;
V_B=2.88;
patm=5;
// using the FSG correlation
Dab=(10^-7)*(((T^1.75)*((1/Ma)+(1/Mb))^(1/2))/(patm*((V_A)^(1/3)+(V_B)^(1/3))^2));
printf("\n\n Dab=%em^2/sec",Dab);
printf("\n\n The FSG correlation agrees to about 2 percent with the experimental value");
