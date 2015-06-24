clc();
clear;
//Given :
// a+b = (2.54/N)cm
N = 15000;//grating has 15000 lines
a_plus_b = 2.54/N ; // grating element in cm
//Grating equation, (a+b)*sin(theta_n) = n*lambda, we get :  theta_n = asind((n*lamba)/(a+b))
printf("For line D1  and Wavelength 5890 A:\n\n");
printf(" Angles at which first order and second order maxima will be observed are :\n");
lambda1 = 5890; //Wavelength in A
for n = 1:2 // First and second order maxima
// 1 A = 1.0*10^-7 mm
theta1_n = asind((n*lambda1*10^-8)/a_plus_b);// angle in degrees
printf(" Order :%d ,%.3f degrees \n",n,theta1_n);
end
printf("For line D2 and Wavelength 5895.9 A :\n\n");
printf(" Angles at which first order and second order maxima will be observed are :\n");
lambda2 = 5895.9 ; //Wavelength in A
for n1 = 1:2 //First and second order maxima
// 1 A = 1.0*10^-7 mm
 theta2_n = asind((n1*lambda2*10^-8)/a_plus_b);// angle in degrees
 printf("Order : %d, %.3f degrees \n",n1,theta2_n); 
end
printf(" When n = 3,  sin(theta)= ((n*lambda*10^-8)/a_plus_b)>1 , which falls outside the sine range, hence third order maximum is not visible");
