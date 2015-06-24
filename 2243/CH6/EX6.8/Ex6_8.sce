clc();
clear;
//Given:
//Gamma-rays,X-rays
lambda1 = 0.01;//Wavelength in A
c = 3*10^8; //Speed of light in m/s
E1 =  12422/lambda1; // Energy in A
p1 = (E1*1.6*10^-19)/c ; //Momentum in kg m/s
//UV
lambda2 = 100;//Wavelength in A
c = 3*10^8; //Speed of light in m/s
E2 =  12422/lambda2; // Energy in A
p2 = (E2*1.6*10^-19)/c ; //Momentum in kg m/s
//IR
lambda3 = 1*10^-4;//Wavelength in m
c = 3*10^8; //Speed of light in m/s
//lambda3 = 1*10^-4*10^10 A , 1 m = 1*10^10 A
E3 =  12422/(lambda3*10^10); // Energy in A
p3 = (E3*1.6*10^-19)/c ; //Momentum in kg m/s
//Microwave
lambda4 = 1;//Wavelength in m
c = 3*10^8; //Speed of light in m/s
//lambda4 = 1*10^10 A , 1 m = 1*10^10 A
E4 =  12422/(lambda4*10^10); // Energy in A
p4 = (E4*1.6*10^-19)/c ; //Momentum in kg m/s
//Radio waves
lambda5 = 100;//Wavelength in m
c = 3*10^8; //Speed of light in m/s
//lambda5 = 100*10^10 A , 1 m = 1*10^10 A
E5 =  12422/(lambda5*10^10); // Energy in A
p5 = (E5*1.6*10^-19)/c ; //Momentum in kg m/s
printf("Gamma-rays,X-rays : \n  Energy : %.2f x 10^6 eV \n Momentum : %.1f x 10^-22 kg m/s \n\n",E1*10^-6,p1*10^22);
printf(" UV : \n  Energy : %.2f eV \n Momentum : %.1f x 10^-26 kg m/s\n\n",E2,p2*10^26);
printf(" IR : \n  Energy : %.4f eV \n Momentum : %.1f x 10^-30 kg m/s\n\n",E3,p3*10^30);
printf(" Microwave : \n  Energy : %.2f x 10^-6 eV \n Momentum : %.1f x 10^-34 kg m/s\n\n",E4*10^6,p4*10^34);
printf(" Radio waves : \n  Energy : %.2f x 10^-8 eV \n Momentum : %.1f x 10^-36 kg m/s",E5*10^8,p5*10^36);


