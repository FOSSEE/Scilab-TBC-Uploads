//Gas Effusion

clear;
clc;

printf("\t Example 5.17\n");

t2=1.5;//diffusion time of compound, min
t1=4.73;//diffusion time of Br, min
M2=159.8;//mol mass of Br gas, g
M=(t2/t1)^2*M2;//molar gas of unknown gas, g(from Graham's Law of Diffusion)

printf("\t the molar mass of unknown gas is : %4.1f g/mol\n",M);

//End
