//Example 8.2
clc
r1=15//in cm
r2=-15 //in cm
d=3//in cm
n=1//in cm
n1=1.62500//in cm
n2=1//in cm
for h = 2:2:7         //the calculations for h=0 is 0, the textbook ans is wrong
    sin_ph=h/r1
    sin_ph1=(sin_ph)*(n/n1)
    ph= asind(sin_ph)
    ph_1=asind(sin_ph1)
    theta=ph_1-ph
    angle=r1*(sin_ph/sin(theta))
    s1=sin_ph/sin(theta)
    s2=d-s1
    sin_ph2=(1+(s2/r2))*sin(theta)
    sin_ph3=(sin_ph2)*(n1/n2)
    ph_2=asind((1+(s2/r2))*sin(theta))
    ph_3=asind((sin_ph2)*(n1/n2))
    theta1=ph_3+theta-ph_2
    angle1=r2*(sin_ph3/sin(theta))
      printf("\n \n")
    printf("\n For h=%d, sin_ph=%f ",h,sin_ph)
    printf("\n \n")
     printf("\n For h=%d, sin_ph1=%f ",h,sin_ph1)
         printf("\n \n")
       printf("\n \n")
      printf("\n For h=%d, ph=%f ",h,ph)
         printf("\n \n")
       printf("\n For h=%d, ph_1=%f ",h,ph_1)
           printf("\n \n")
        printf("\n For h=%d, theta=%f ",h,theta)
            printf("\n \n")
         printf("\n For h=%d, angle=%f ",h,angle)
         printf("\n \n")
         printf("\n For h=%d, s2=%f ",h,s2)
         printf("\n \n")
             printf("\n For h=%d, sin_ph2=%f ",h,sin_ph2)
    printf("\n \n")
     printf("\n For h=%d, sin_ph3=%f ",h,sin_ph3)
         printf("\n \n")
       printf("\n \n")
      printf("\n For h=%d, ph_2=%f ",h,ph_2)
         printf("\n \n")
       printf("\n For h=%d, ph_3=%f ",h,ph_3)
           printf("\n \n")
        printf("\n For h=%d, theta1=%f ",h,theta1)
            printf("\n \n")
         printf("\n For h=%d, angle1=%f ",h,angle1)

end
