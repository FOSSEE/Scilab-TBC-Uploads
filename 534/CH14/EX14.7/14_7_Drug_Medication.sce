clear;
clc;
printf('FUNDAMENTALS OF HEAT AND MASS TRANSFER \n Incropera / Dewitt / Bergman / Lavine \n EXAMPLE 14.7   Page 913 \n')// Example 14.7

// Total dosage of medicine delivered to the patient over a one-week time period, sensivity of the dosage to the mass duffusivity of the patch and skin

Dap = .1*10^-12        ;//[m^2/s] Diffusion coefficient of medication with patch
Das = .2*10^-12        ;//[m^2/s] Diffusion coefficient of medication with skin
L = .05                ;//[m] patch Length
rhop = 100             ;//[kg/m^3] Density of medication on patch
rho2 = 0               ;//[kg/m^3] Density of medication on skin
K = .5                 ;//Partition Coefficient
t = 3600*24*7          ;//[s] Treatment time

//Applying Conservation of species equation 14.47b
//By analogy to equation 5.62, 5.26 and 5.58
D = 2*rhop*L^2/(sqrt(%pi))*sqrt(Das*Dap*t)/(sqrt(Das)+sqrt(Dap)/K);

printf('\n Total dosage of medicine delivered to the patient over a one-week time period is %.1f mg',D*10^6);

//Senstivity of dosage to the patch and skin
clf();
//Subplot 1
Dap1 = .1*10^-12             ;//[m^2/s]
Das1 = .1*10^-12             ;//[m^2/s]
Das2 = .2*10^-12             ;//[m^2/s]
Das3 = .4*10^-12            ;//[m^2/s]
x = linspace(0,7,50);
y1 = 2*rhop*L^2/(sqrt(%pi))*sqrt(Das1*Dap1*3600*24*x)/(sqrt(Das1)+sqrt(Dap1)/K)*10^6;
y2 = 2*rhop*L^2/(sqrt(%pi))*sqrt(Das2*Dap1*3600*24*x)/(sqrt(Das2)+sqrt(Dap1)/K)*10^6;
y3 = 2*rhop*L^2/(sqrt(%pi))*sqrt(Das3*Dap1*3600*24*x)/(sqrt(Das3)+sqrt(Dap1)/K)*10^6;
subplot(1,2,1);
plot(x,y1,x,y2,x,y3);
xtitle("Dosage vs Time-period at Dap = .1*10^ -12 (m^2/s)", "Day", "Dosage (mg)");
legend (".1*10^12", ".2*10^12", ".4*10^12");

//Subplot 2
Dap2 = .01*10^-12             ;//[m^2/s]
yn1 = 2*rhop*L^2/(sqrt(%pi))*sqrt(Das1*Dap2*3600*24*x)/(sqrt(Das1)+sqrt(Dap2)/K)*10^6;
yn2 = 2*rhop*L^2/(sqrt(%pi))*sqrt(Das2*Dap2*3600*24*x)/(sqrt(Das2)+sqrt(Dap2)/K)*10^6;
yn3 = 2*rhop*L^2/(sqrt(%pi))*sqrt(Das3*Dap2*3600*24*x)/(sqrt(Das3)+sqrt(Dap2)/K)*10^6;
subplot(1,2,2);
plot(x,yn1,x,yn2,x,yn3);
xtitle("Dosage vs Time-period at Dap = .01*10^ -12 (m^2/s)", "Day", "Dosage (mg)");
legend (".1*10^12", ".2*10^12", ".4*10^12");
//END