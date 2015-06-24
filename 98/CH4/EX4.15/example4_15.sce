//Chapter 4
//Example 4_15
//Page 82

clear;clc;

cc_h=2100;
cc_s=1200;
rc_h=0.032;
rc_s=0.05;
id_s=0.09;
id_h=0.075;
resc_h=0.33;
resc_s=0.25;
units=40*10^6;

u=8760;
printf(" x kW - maximum demand \ny -annual load factor at which cost for both stations are same \nUnits generated per annum = %dxy kWh \n\n", u);

ic_s=1+resc_s;
ic_h=1+resc_h;
printf("Installed capacity of steam plant = %.2fx kW \n", ic_s);
printf("Installed capacity of hydro plant = %.2fx kW \n\n", ic_h);
printf("STEAM STATION: \n");
ccs=cc_s*ic_s;
ids=id_s*ccs;
rcs=rc_s*8760;
printf("Capital cost = Rs. %dx \n", ccs);
printf("Interest and depreciation = Rs. %dx \n", ids);
printf("Running cost/annum = Rs %dxy \n", rcs);
printf("Overall cost/kWh = Rs (%dx+%dxy)/(%dxy) \n\n", ids, rcs, u);

printf("HYDRO STATION: \n");
cch=cc_h*ic_h;
idh=id_h*cch;
rch=rc_h*8760;
printf("Capital cost = Rs. %dx \n", cch);
printf("Interest and depreciation = Rs. %dx \n", idh);
printf("Running cost/annum = Rs %dxy \n", rch);
printf("Overall cost/kWh = Rs (%dx+%dxy)/(%dxy) \n\n", idh, rch, u);

y=47.46;
printf("Equating operating cost, Load factor y = %.2f %% \n", y);
md=units/8760/y*100;
printf("Max demand = x = %.2f*10^3 kW \n", md/1000);
cost=(ids*md+rcs*md*y/100);
printf("Cost of generation = Rs. %.2f*10^3 \n\n", cost/1000);


