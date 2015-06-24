clc();
clear;
//Given:
deltalambda1 = 0.01; // The line width of the orange line of krypton,Kr^86  in A
lambda = 6058; // Wavelength in angstroms = 6058*10^-10 m
deltalambda2 = 0.00015; // The line width of a laser source in A
c = 3*10^8 ;// Velocity of light  in vacuum in m/s 
nu0 = c/(lambda*10^-10);// lambda in m , 1 A = 1.0 × 10^-10 m
//1 A = 1.0 × 10^-10 m
//For orange line of Krypton
Lc1= (lambda^2/deltalambda1)*10^-10; // coherence length in m 
deltanu1 = c/Lc1 ;//  bandwidth in Hz
Tc1 = (Lc1/c);// Coherence time in s 
//Xi = deltanu/nu0 , where nu0 = c/lambda which equals to (deltanu*lambda)/c, lambda in A
Xi1 = deltanu1/nu0 ; //degree of monochromaticity 
//For Laser Source
Lc2= (lambda^2/deltalambda2)*10^-10;// coherence length in m
deltanu2 = c/Lc2 ;//  in Hz
Tc2 = (Lc2/c);//Calculating Coherence time in s
//Xi = deltanu/nu0 , where nu0 = c/lambda which equals to (deltanu*lambda)/c, lambda in A
Xi2 = deltanu2/nu0 ;// degree of monochromaticity 
printf("For Orange line of Krypton : \n\n Coherence Length : \t %.4f m \n Bandwidth : \t\t %.2f x 10^8 Hz \n Coherence : \t\t %.2f x 10^-8 s \n Degree of Monochromaticity :  %.2f x 10^-6  \n\n",Lc1,deltanu1*10^-8,Tc1*10^8,Xi1*10^6);
printf("For Laser Source : \n\n Coherence Length : \t %.2f m \n Bandwidth : \t\t %.2f x 10^7 Hz \n Coherence : \t\t %.2f x 10^-8 s \n Degree of Monochromaticity :  %.2f x 10^-8  \n\n",Lc2,deltanu2*10^-7,Tc2*10^8,Xi2*10^8);
