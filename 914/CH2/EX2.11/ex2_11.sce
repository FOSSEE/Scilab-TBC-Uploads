clc;
warning('off');
printf("\n\n example2.11 - pg51");
// given
po=1;  //[atm] - pressure
p=2;  //[atm] - pressure
To=0+273.15;  //[K] - temperature
T=75+273.15;  //[K] - temperature
Do=0.219*10^-4;  //[m^2/sec];
n=1.75;
// using the formula D=Do*(po/p)*(T/To)^n
D=Do*(po/p)*(T/To)^n;
printf("\n\n The diffusion coefficient of water vapour in air at %fatm and %fdegC is \n D=%em^2/sec",p,T-273.15,D);
