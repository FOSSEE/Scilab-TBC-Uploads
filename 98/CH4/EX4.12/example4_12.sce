//Chapter 4
//Example 4_12
//Page 80

clear;clc;

md=1;
lf=0.5;
cc=12*1e5;
rm=0.005;
fc=1600;
id=0.1;
fcon=0.3;
w=50000;
c=150;
rc=0.15;

ugpa=md*1000*lf*8760;

printf("(i) Private oil engine generating plant\n");
afc=fcon*ugpa;
a_f_c=afc*fc/1000;
arm=rm*ugpa;
aw=w;
aid=id*cc;

printf(" Annual fuel consumption = %.0f kg \n", afc);
printf(" Annual cost of fuel = Rs. %.0f \n", a_f_c);
printf(" Annual cost of maintainence and repair = Rs. %.0f \n", arm);
printf(" Annual wages = Rs. %.0f \n", aw);
printf(" Annual interest and depreciation = Rs. %.0f \n\n", aid);
printf(" Total annual charges = Rs. %.0f \n\n", a_f_c+arm+aw+aid);


afc2=c*1000;
arc=rc*ugpa;
t=afc2+arc;
printf("(ii) Public supply\n");
printf(" Annual fixed charges = Rs. %.0f \n", afc2);
printf("Annual running charges = Rs. %.0f \n", arc);
printf("Total annual charges = Rs. %.0f \n\n",t);
