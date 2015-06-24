clc();
clear;
//Given :
d = 8.8*10^-2 ; // slit width in mm
b = 0.7;// seperation between slits in mm
lambda = 6328 ; //Wavelength in A
//First diffraction minima is possible, when  d*sin(theta) = lambda
// 1 A = 1.0*10^-7 mm
theta = asind((lambda*10^-7)/d); // angle in degrees
printf("theta = %.3f degrees .\n\n",theta);
//interference minima is possible , when sin(theta) = ((p + 1/2)*lambda)/b
for p = 0 : 10
    //1 A = 1.0*10^-7 mm
    theta1 = asind((p + 1/2)*(lambda*10^-7/b)); // angle in degrees 
    printf("When p = %d \n",p);
    printf("theta = %.3f degrees . \n\n",theta1);
 if(theta1 > theta)
     printf(" When p >= %d ,  theta > %.3f degrees .\n\nBetween the first two diffraction minima , %d interference minima are possible.",p,theta,2*p);
     break;
 end
end
