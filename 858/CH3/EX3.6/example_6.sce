clc
clear 
printf("example 3.6 page number 94\n\n")

//to find the flow rate and concentration

G1 = 3600   //in m3/h
P = 106.6    //in kPa
T = 40   //in degree C
q = G1*(P/101.3)*(273/((273+T)));   //in m3/s
m = q/22.4;   //in kmol/h
y1 = 0.02;
Y1 = y1/(1-y1);

printf("mole ratio of benzene = %f kmol benzene/kmol dry gas",Y1)

Gs = m*(1-y1);
printf("\n\nmoles of benzene free gas = %f kmol drygas/h",Gs)

//for 95% removal
Y2 = Y1*(1-0.95);
printf("\n\nfinal mole ratio of benzene = %f kmol benzene/kmol dry gas",Y2)

x2 = 0.002
X2 = 0.002/(1-0.002);

//at equilibrium y* = 0.2406X
//part 1
//for oil rate to be minimum the wash oil leaving the absorber must be in equilibrium with the entering gas

y1 = 0.02;
x1 = y1/(0.2406);
X1 = x1/(1-x1);
min_Ls = Gs*((Y1-Y2)/(X1-X2));
printf("\n\nminimum Ls required = %f kg/h",min_Ls*260)

//for 1.5 times of the minimum
Ls = 1.5*min_Ls;
printf("\n\nflow rate of wash oil = %f kg/h",Ls*260)
X1 = X2 + (Gs*((Y1-Y2)/Ls));
printf("\n\nconcentration of benzene in wash oil = %f kmol benzene/kmol wash oil",X1)
