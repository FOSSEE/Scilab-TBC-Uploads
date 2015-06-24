//5.8
clc;
f=50;
Vin=230;
w=2*%pi*f;
L=20*10^-3;R=5;
th=atand(R/(w*L));
printf("Firing angle=%.2f degree",th)
disp('Therefore, Range of firing angle is 38.51 degree to 180 degree')
Beta=180;
printf("Conduction angle of thyristor=%.0f degree",Beta)
IL=Vin/((R^2+w^2*L^2))^0.5;
printf(" \nRMS load current =%.2f A", IL)
Po=IL^2*R;
printf(" \nPower Output =%.2f W", Po)
pf_input=Po/(Vin*IL);
printf(" \nInput Power factor =%.3f lagging", pf_input)