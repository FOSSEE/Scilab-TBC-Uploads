clear;
clc;

// Illustration 7.12
// Page: 252

printf('Illustration 7.12 - Page: 252\n\n')
// solution

//****Data****//
Tempg1 = 32;// [OC]
Tempw1 = 28;// [OC]
//******//

H1 = 90;// [kJ/kg]
H1_prime = 72;// [kJ/kg dry air]
H2_prime = 163.6;// [kJ/kg dry air]
deff('y = f17(H2)','y = (H2-H1)-(H2_prime-H1_prime)');
H2 = fsolve(2,f17);// [kJ/kg dry air]
// Slope of Operating Line same as Operating Line as Illustration 7.11
slopeOperat = (163.5-72)/(45-29);
deff("[y] = f18(Temp)","y = slopeOperat*(Temp-Tempg1)+H1");
Temp = 30:0.01:45;
// Equilibrium Data:
// Data  = [Temp.(OC),H_star(kJ/kg)]
Data_star = [29 100;32.5 114;35 129.8;37.5 147;40 166.8;42.5 191;45 216];
scf(5);
plot(Data_star(:,1),Data_star(:,2),Temp,f18);
xgrid();
legend("Equilibrium Line","operating Line");
xlabel("Liquid Temperature, C");
ylabel("Enthalphy Of Air Water vapour, kJ/kg dry air");
// The Value for NtoG & HtoG will be same as in Illustration 7.11
NtoG = 3.25;
HtoG = 2.22;// [m]
// By hit & trial method:
Temp = 37.1;// [OC]
printf("The Temperature to which water is to be cooled is %f OC\n",Temp);