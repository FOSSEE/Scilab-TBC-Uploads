clc;
warning('off');
printf("\n\n example2.8 - pg39");
// given
delx=0.3-0;  //[m] - length
d=0.05-0;  //[m] - diameter
A=(%pi*d^2)/4;  //[m^2] - area;
R=8.314*10^3;  //[N*m/kmol*K] - gas constant
xco1=0.15;  // mole prcent of co in one tank
xco2=0;  // mole percent of co in other tank
p2=1;  //[atm] - pressure in one tank
p1=p2;  //[atm] - pressure in other tank
D=0.164*10^-4;  //[m^2/sec] - diffusion coefficient
T=298.15;  //[K] - temperature
// using the formula (Na/A)=(Ja/A)=-D*(delca/delx)=-(D/R*T)*(delpa/delx);
delpa=(p2*xco2-p1*xco1)*10^5;  //[N/m^2] - pressure difference
Na=-((D*A)/(R*T))*(delpa/delx);
disp(Na)
printf("\n\n The initial rate of mass transfer of co2 is %ekmol/sec",Na);
printf("\n\n In order for the pressure to remain at 1atm, a diffusion of air must occur which is in the opposite direction and equal to %ekmol/sce",Na);

