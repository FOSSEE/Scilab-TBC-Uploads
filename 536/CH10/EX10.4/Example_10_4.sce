clear;
clc;

printf("Example 10.4\n");

Q=3e-6; //Flow rate of water
Meu=1e-3; //Viscosity of water
D=1.5e-9; //diffusivity of carbon dioxide in water
rho=1e3; //Density of water

//the mean velocity of flow is governed by equation 3.87 in which sin(phi)is 
//put equal to unity for a vertical surface:
s=(Q*1e2*Meu*3/(rho*9.81))^(1/3);//Thickness of film

//A=Ux/Us=0.95;
A=0.95;
y=s*(1-A)^0.5;//The distance below the free surface
//using equation 10.108 and using tables of error fuctions
t=(1.305/1.822)^2
Us=rho*9.81*s^2/(2*Meu);//surface velocity
L=Us*t;//The maximum lend=gth of column
printf("\n The maximum length of column = %.2f m",L);