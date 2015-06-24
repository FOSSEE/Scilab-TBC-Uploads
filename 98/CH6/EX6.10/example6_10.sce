//Chapter 6
//Example 6_10
//Page 114

clear;clc;

im=37.3;
pf1=0.8;
n_im=0.85;
sm=18.65;
pf2=0.9;
n_sm=0.9;
ll=10;
pf3=1;
fc=60;
rc=0.05;
h=2000;

ip_im=im/n_im;
lag_im=ip_im*tan(acos(pf1));
printf("Input power to induction motor = %.2f kW \n", ip_im);
printf("Lagging kVAR taken by induction motor = %.2f kW \n\n", lag_im);

ip_sm=sm/n_sm;
lead_sm=ip_sm*tan(acos(pf2));
printf("Input power to synchronous motor = %.2f kW \n", ip_sm);
printf("Leading kVAR taken by synchronous motor = %.2f kW \n\n", lead_sm);
net=lag_im-abs(lead_sm);
tap=ip_im+ip_sm+ll;
tkva=abs(sqrt(net^2+tap^2));
dc=fc*tkva;
ec=tap*h;
aec=abs(rc*ec);
t=dc+aec;

printf("Net lagging kVAR = %.2f \n", net);
printf("Total active power = %.2f \n", tap);
printf("Total kVA = %.2f \n", tkva);
printf("Annual demand charges = Rs. %.2f \n", dc);
printf("Energy consumed per year = %.2f kWh \n", ec);
printf("Annual energy charges = Rs. %.2f \n", aec);
printf("Total annual bill = Rs. %.2f \n", t);
