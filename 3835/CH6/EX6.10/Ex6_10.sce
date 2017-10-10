clear
//
//at unity power factor
op=15000
n=0.98
i=op/(n)
printf("\n %0.3f ",i)
loss=i-op
printf("\n %0.3f ",loss)
pc=(loss)/2000 //actually division by 2 but value given only to make pc 0.153 instead of 153
t=pc*24 //iron loss in a day
toteng=20+96+108 //sum of energy outputs
engloss=0.109+1.224+1.632 //sum of energy losses
n=toteng/(engloss+toteng+t)
printf("\n %0.3f ",n)
