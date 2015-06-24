//chapter 14
//example 14.2
//page 301

Ap1=40 // db
Ap2=43 // db

// since Ap = 10*log10(power_gain), we get
power_gain1=10^(Ap1/10)
power_gain2=10^(Ap2/10)

printf("power gain of 40 db = %.3f \n",power_gain1)
printf("power gain of 43 db = %.3f \n",power_gain2)

// the accurate answer for power gain of 43 db is 19952 but in book it is given as 20000 db
