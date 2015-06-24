//Chapter 6
//Example 6_12
//Page 115

clear;clc;

sm=100;
im=200;
pf2=0.707;
n2=0.82;
ll=30;
fc=100;
rc=0.06;
pf1=0.8;
n1=0.93;

printf("(i) When synchronous motor runs at %.1f pf lag:\n\n", pf1);
ip_sm=sm*735.5/n1/1000;
lag1=ip_sm*tan(acos(pf1));
printf("\t Input to synchronous motor = %.2f kW \n", ip_sm);
printf("\t Lagging kVAR taken by synchronous motor = %.2f kVAR \n\n", lag1);

ip_im=im*735.5/n2/1000;
lag2=ip_im*tan(acos(pf2));
printf("\t Input to induction motor = %.2f kW \n", ip_im);
printf("\t Lagging kVAR taken by induction motor = %.2f kVAR \n\n", lag2);

tlag1=lag1+lag2;
tap1=ip_im+ip_sm+ll;
tkva1=sqrt(tlag1^2+tap1^2);
dc1=tkva1*fc;
ec1=tap1*8760;
aec1=ec1*rc;
tab1=aec1+dc1;
printf("\t Total lagging kVAR = %.2f kVAR \n", tlag1);
printf("\t Total active power = %.2f kW \n", tap1);
printf("\t Total kVA = %.2f kVA \n", tkva1);
printf("\t Annual kVA demand charges = Rs. %.2f \n", dc1);
printf("\t Energy consumed per year = %.2f kWh \n", ec1);
printf("\t Annual energy charges = Rs. %.2f \n", aec1);
printf("\t Total annual bill = Rs. %.2f \n\n", tab1);

printf("(ii) When synchronous motor runs at %.1f pf lead:\n\n", pf1);
net=-lag1+lag2;
tap2=ip_im+ip_sm+ll;
tkva2=sqrt(net^2+tap2^2);
dc2=tkva2*fc;
ec2=tap2*8760;
aec2=ec2*rc;
tab2=aec2+dc2;
printf("\t Net lagging kVAR = %.2f kVAR \n", net);
printf("\t Total active power = %.2f kW \n", tap2);
printf("\t Total kVA = %.2f kVA \n", tkva2);
printf("\t Annual kVA demand charges = Rs. %.2f \n", dc2);
printf("\t Energy consumed per year = %.2f kWh \n", ec2);
printf("\t Annual energy charges = Rs. %.2f \n", aec2);
printf("\t Total annual bill = Rs. %.2f \n\n", tab2);

as=tab1-tab2;
printf("Annual saving = Rs. %.0f \n\n", as);




