clear
clc
disp('Ex-15.1');
w=121.5;   //lambeda
G=6.67*10^-11; //Various given values and constants
M= 1.99*10^30; 
R= 6.96*10^8;
c=3*10^8;
k= G*M/(R*c^2);    //(delLambeda)/(lambeda)
delw=k*w;           //del(lambeda)
printf('The change in wavelength due to gravitational shift is %.3f pm\n',delw*10^3);
k=5.5*10^-5;//due to thermal Doppler broadening effect
delw=k*w;
printf('The change in wavelength due to thermal Doppler broadening effect is %.1f pm',delw*10^3);