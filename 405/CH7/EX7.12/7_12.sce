clear;
clc;
printf("\t\t\tExample Number 7.12\n\n\n");
// heat transfer across evacuated space
// Example 7.12 (page no.-351-352) 
// solution

E = 0.06;// emmisvity of polished aluminium plate
d = 0.025;// [m] seperation between plates
p = 101325*10^(-6);// [Pa] pressure of air between plates
T1 = 100;// [degree celsius] temperature of plate 1
T2 = 30;// [degree celsius] temperature of plate 2
// we first calculate the mean free path to determine if low-density effects to be important.
// evaluating properties at the mean air temperature of 65 degree celsius, we have
lambda = (2.27*10^(-5)*((T1+T2)/2+273))/(p);// [m]
// since the plate spacing is only 2.5 cm, we should expect low-density effects to be important.
// evaluating properties at the mean temperature of 65 degree celsius, we have
k = 0.0291;// [W/m degree celsius]
Gamma = 1.40;
Pr = 0.7;
alpha = 0.9;// from table 7-4(page no.-350)
// combining equations (7-75)with the central temperature gradient relation gives 
// inserting the appropriate properties gives
deff('y = f(dT)','y = dT-((2-alpha)/alpha)*(2*Gamma/(Gamma+1))*(lambda/Pr)*((T1-T2-2*dT)/d)');
dT = fsolve(1,f);
// the conduction heat transfer is thus
q_by_A = k*((T1-T2-2*dT)/d);// [W/square meter]
printf("conduction heat transfer through the air gap is %f W/square meter",q_by_A);
// at normal atmospheric pressure the conduction would be 
q_by_A1 = k*((T1-T2)/d);// [W/square meter]
// the radiation heat transfer is calculated with equation (8-42), taking E1=E2=0.06 for polished aluminium:
sigma = 5.669*10^(-8);// []
q_by_A_rad = sigma*(((T1+273)^(4)-(T2+273)^(4))/((2/E)-1));// [W/square meter] 
printf("\n\n thus, at the low density condition the radiation heat transfer is almost %f times as large as the conduction",q_by_A_rad/q_by_A);

