//Example 8.1, page 157
clc
r=5//in cm
n=1//in cm
n1=1.67200//in cm
for h = 1:3         //the calculations for h=0 is 0, the textbook ans is wrong
    sin_ph=h/r
    sin_ph_1=(sin_ph)*(n/n1)
    ph=asind(sin_ph)
    ph_1=asind(sin_ph_1)
    theta=ph_1-ph
    angle=sin(theta)      // the textbook ans is wrong
      printf("\n \n")
    printf("\n For h=%d, sin_ph=%f ",h,sin_ph)
    printf("\n \n")
     printf("\n For h=%d, sin_ph1=%f ",h,sin_ph_1)
         printf("\n \n")
       printf("\n \n")
      printf("\n For h=%d, ph=%f ",h,ph)
         printf("\n \n")
       printf("\n For h=%d, ph1=%f ",h,ph_1)
           printf("\n \n")
        printf("\n For h=%d, theta=%f ",h,theta)
            printf("\n \n")
         printf("\n For h=%d, angle=%f ",h,angle)
         
end

