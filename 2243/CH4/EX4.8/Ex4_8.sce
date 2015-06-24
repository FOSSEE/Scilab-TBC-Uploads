clc();
clear;
// Given :
//(a) 15000 lines per inch 
N1 = 15000; //15000 lines per inch
a1_plus_b1 = (2.54/N1)*10^8 ; //grating element in A
lambda1 = 5890; //Wavelength in A
lambda2 = 5895.9 ; // Wavelength in A
deltalambda1 = lambda2-lambda1; //in A
//For first order
n =1;
theta1 = 20.355; // in degrees
deltatheta1 = ((n*deltalambda1)/((a1_plus_b1)*cosd(theta1)));// dispersion in degrees/A
rp1 = n*N1; // resolving power


//(b)15000 lines per cm
// 1 cm = 0.393701 inches, so We have 15000 lines per 0.393701 inches. 
//Therefore, For 1 inch we have 15000/0.393701 = 38099.979 or 38100 lines
N2 = 38100 ; //38100 lines per inch
a2_plus_b2 = (2.54/N2)*10^8 ; //grating element in A
//For first order
theta_1 = asind((n*lambda1)/(a2_plus_b2));// in degrees
deltatheta_1 = ((n*deltalambda1)/((a2_plus_b2)*cosd(theta_1)));//  dispersion in degrees/A
rp2 = n*15000; // resolving power


//(c)5906 lines per cm
// 1 cm = 0.393701 inches, so We have 5906 lines per 0.393701 inches. 
//Therefore, For 1 inch we have 5906/0.393701 =  15001.232  or 15001 lines
N3 = 15001; //15001 lines per inch
a3_plus_b3 = (2.54/N3)*10^8; //grating element in A
//For first order
theta__1 = asind((n*lambda1)/(a3_plus_b3)); // in degrees
deltatheta__1 = ((n*deltalambda1)/((a3_plus_b3)*cosd(theta__1))); //  dispersion in degrees/A
rp3 = n*5906; // resolving power

printf(" Number of lines \tGrating element (in A)\t Angle of diffraction(degrees)\t Dispersion (degrees/A) \t Resolving Power\n");
printf("%d /inch\t\t\t %.0f\t\t %.2f \t\t\t\t %.2f x 10^-3\t\t\t %d\n",N1,a1_plus_b1,theta1,deltatheta1*10^3,rp1);
printf("%d /cm\t\t\t %.0f\t\t %.2f \t\t\t\t %.2f x 10^-3\t\t\t %d\n",15000,a2_plus_b2,theta_1,deltatheta_1*10^3,rp2);
printf("%d /cm\t\t\t %.0f\t\t %.2f \t\t\t\t %.2f x 10^-3\t\t\t %d\n",5906,a3_plus_b3,theta__1,deltatheta__1*10^3,rp3);
// Error in textbook for dispersion values . Error in decimal point placement .
