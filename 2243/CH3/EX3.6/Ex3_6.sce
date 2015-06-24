clc();
clear;
//Given:
lambda = 5890; // Wavelength of a beam of sodium light in A
l = 100 ; // thickness  in cm
mu1 = 1.00;//refractive index of air
mu2 = 1.33;// refractive index of water
mu3 = 1.39; // refractive index of  oil
mu4 = 1.64; // refractive index of glass
c = 3*10^8 ;// Velocity of light in vacuum in m/s
//For Air :
lambda1 = lambda/mu1; // wavelength of light in A
v1 = c/mu1;// Velocity of light in air in m/s
// 1cm = 1*10^-2 m
t1 = (l*10^-2/v1); //time of travel in s
// 1 A = 1*10^-10 m
N1 = (l*10^-2)/(lambda1*10^-10);// Number of waves 
delta1 = mu1*l; //Optical path in cm
//For Water :
lambda2 = lambda/mu2; // wavelength of light in A
v2 = c/mu2;// Velocity of light in water in m/s
//1cm = 1*10^-2 m
t2 = (l*10^-2/v2); //time of travel in s 
//1 A = 1*10^-10 m
N2 = (l*10^-2)/(lambda2*10^-10);// Number of waves 
delta2 = mu2*l; //Optical path in cm
//For Oil :
lambda3 = lambda/mu3; // wavelength of light in A
v3 = c/mu3;// Velocity of light in Oil in m/s
//1cm = 1*10^-2 m
t3 = (l*10^-2/v3); //time of travel in s
//1 A = 1*10^-10 m
N3 = (l*10^-2)/(lambda3*10^-10);// Number of waves 
delta3 = mu3*l; //Optical path in cm
//For Glass: 
lambda4 = lambda/mu4; // wavelength of light in A
v4 = c/mu4;// Velocity of light in Glass in m/s
// 1cm = 1*10^-2 m
t4 = (l*10^-2/v4); //time of travel in s
//1 A = 1*10^-10 m
N4 = (l*10^-2)/(lambda4*10^-10);// Number of waves 
delta4 = mu4*l; //Optical path in cm
delta = delta1+delta2+delta3+delta4; // total optical path in cm
printf("Parameters \t\t\t Air \t\t\t Water \t\t\t Oil \t\t\tGlass \n\n");
printf("Wavelength : \t\t %.0f A \t\t %.1f A \t\t %.1f A \t\t %.1f A \n",lambda1,lambda2,lambda3,lambda4);
printf("Velocity : \t\t %.0f x 10^8 m/s \t\t %.2f x 10^8m/s \t %.2f x 10^8 m/s \t %.2f x 10^8 m/s \n",v1*10^-8,v2*10^-8,v3*10^-8,v4*10^-8);
printf("Time of travel : \t %2.1f x 10^-10 s\t %2.1f x 10^-10 s\t %2.1f x 10^-10 s\t %2.1f x 10^-10 s \n",t1*10^10,t2*10^10,t3*10^10,t4*10^10);
printf("Number of waves: \t %.1f x 10^6 \t\t %.1f x 10^6 \t\t %.1f x 10^6 \t\t %.1f x10^6 \n",N1*10^-6,N2*10^-6,N3*10^-6,N4*10^-6);
printf("Optical path : \t\t %d cm \t\t %d cm \t\t %d cm \t\t %d cm \n\n",delta1,delta2,delta3,delta4);
printf(" The total optical path = %d cm\n\n",delta);




