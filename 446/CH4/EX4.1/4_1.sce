clear
clc
disp("Ex: 4.1 ");
h=6.6*10^-34;                              // h(planck's constant)= 6.6*10^-34 
m1= 10^3;v1=100;;                            // for automobile
w1= h/(m1*v1);                            // ['w'-wavelength in metre'm'-mass in Kg 'v'-velocity in metres/sec.] of the particles 
printf("Wavelength of the automobile is %1.2e m\n",w1 );
m2=10*(10^-3);v2= 500;                      // for bullet
w2=h/(m2*v2);
printf("Wavelength of the bullet is %1.2e m\n ",w2 );
m3=(10^-9)*(10^-3); v3=1*10^-2;
w3=h/(m3*v3);
printf("Wavelength of the smoke particle is %1.2e m\n",w3 );
m4=9.1*10^-31;k=1*1.6*10^-19;            // k- kinetic energy of the electron & using 1ev = 1.6*10^-19 joule
p=sqrt(2*m4*k);                         // p=momentum of electron ;from K=1/2*m*v^2
w4=h/p;
printf("Wavelength of the electron(1ev) is %1.2fnm\n",w4*10^9 );
hc=1240;pc=100                         // In the extreme relativistc realm, K=E=pc; Given pc=100MeV,hc=1240MeV 
w5= hc/pc;
printf("Wavelength of the electron (100Mev) is %1.2f fm\n",w5);