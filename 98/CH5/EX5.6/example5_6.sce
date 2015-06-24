//Chapter 5
//Exampl 5_6
//PAge 93

clear;clc;

md=75;
lf=0.4;
gcc=60;
goc=0.04;
tcc=2000000;
dcc=1500000;
tdf=1.2;
ddf=1.25;
n_tr=0.9;
n_dr=0.85;

printf("Cost at Substation\n\n");
printf("\t (i) Annual fixed charges\n");
gc=gcc*md*1000;
tafc=gc+tcc;
agg=md*1000*tdf;
ac=tafc/agg;

printf("\t\t Generation cost = Rs. %.0f \n", gc);
printf("\t\t Transmission cost = Rs. %.0f \n",tcc);
printf("\t\t Total annual fixed charges at the substation=Rs. %.0f \n", tafc);
printf("\t\t Aggregate of all max demands by various substations =  %.0f kW \n", agg);
printf("\t\t Annual cost per kW of maximum demand = Rs. %.2f \n\n", ac);

printf("\t (ii) Running charges\n");
c=goc/n_tr;
printf("\t\t Cost per kWh at substation = Rs. %.4f \n\n", c);

printf("Cost at Consumers premises\n");
cp=tafc+dcc;
aggm=agg*ddf;
ckW=cp/aggm;
ckWh=c/n_dr;

printf("\t\t Total annual fixed charges at consumers premises = Rs. %.0f \n\n", cp);
printf("\t\t Aggregate of max demands of all consumers = %.0f kW \n\n", aggm);
printf("\t\t Annual cost per kW of max demand = Rs. %.0f \n\n", ckW);
printf("\t\t Cost per kWh at consumers premises = Rs. %.4f \n\n", ckWh);



