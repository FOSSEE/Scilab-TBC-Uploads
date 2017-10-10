clear
//Given
t=5000                   //Days
t1=2000.0
a=0.693 

//Calculation
//
dt=(a*t)/t1
N=log10(dt)
l=a*N/(t1)

//Result
printf("\n (i) The fraction remaining after 5000 days is %0.3f  ",N)
printf("\n (ii) The activity of sample after 5000 days is %0.1f  *10**8 Bq",l*10**5)
