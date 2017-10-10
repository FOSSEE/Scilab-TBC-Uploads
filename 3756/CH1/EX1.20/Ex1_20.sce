clc
//
//
//

//Variable declaration
mu=1.33    //refractive index
n1=0
n2=1
n3=2
t=5*10**-7 //thickness


//Calculations
lambda1=(4*mu*t*10**10)/(2*n1+1)
lambda2=(4*mu*t*10**10)/(2*n2+1)
lambda3=(4*mu*t*10**10)/(2*n3+1)

//Result
printf("\n For n=0 Lambda is %0.3f ",lambda1)
printf("\n For n=1 Lambda is %i ",lambda2)

printf("\n For n=2 Lambda is %0.3f ",lambda3)
printf("\n Out of these only %0.3f lies in the visible range for n=2",lambda3)
