
// stress relaxation in a thermoplastic members under tension

clc
sigma1 = 6 // stress in MPa
sigma2 = 3 // stress factor after 25 days
sigma3 = 1 // stress factor at one tenth of initial value
t1 = 25 // number of days
printf("\n Example 10.3")
lambda = -t1/log(sigma2/sigma1)
t = -lambda*log(sigma3/sigma1)
printf("\n It will take time of %.1f days \n for stress level to reach one tenth of its original value.",t)

