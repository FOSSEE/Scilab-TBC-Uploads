
//Variable declaration
I1=10;     //intensity(w/m**2)
I2=25;     //intensity(w/m**2)

//Calculation
a1bya2=sqrt(I1/I2);    
I=((1+a1bya2)**2)/((a1bya2-1)**2);    //ratio of maximum intensity to minimum intensity

//Result
printf('ratio of maximum intensity to minimum intensity is %0.3f     \n',(I))
printf('answer varies due to approximating off errors\n')