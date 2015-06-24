//chapter 5
//example 5.17
//page 455
clear;
clc;
disp("example 5.17");
disp("power factor of existing load is 0.8 lagging");
pf=0.8; //power factor
phi=acosd(pf);
printf("phi= %d degree\n",phi);
L=800;   //load
kVAr1=(L*tand(phi));
printf("kVAr1= %d \n",kVAr1);
disp("output for the synchronous motor is 200kW");
output=200;
efficiency=0.9;
kW=(output/efficiency);
printf("Input to the synchronous motor= %fkW\n",kW);
TL=(L+kW); // total load
printf("Total load on the system= %fkW\n",TL);
disp("overall power factor of the load is to be raised to 0.92 lagging");
pf=0.92;
phi=acosd(pf);
kVAr2=(TL*tand(phi))
printf("kVAr2=%f\n",kVAr2);
kVAr=kVAr1-kVAr2;
printf("lagging kVAr of synchronous codenser= %f\n",kVAr);
printf("leading kVAr supplied by the motor= %f\n",kVAr);
phi=atand(kVAr/kW);
printf("phi= %d degree\n\n",phi);
printf("Power factor of the synchronos motor= %f leading \n",cosd(phi));
printf("KVA rating of the synchronous motor= %f",(kW/cosd(phi)));

