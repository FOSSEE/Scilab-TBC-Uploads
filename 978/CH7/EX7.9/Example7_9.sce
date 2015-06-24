//chapter-7,Example7_9,pg 498

//refer fig. 7.30(a),(b),(c)

//N=(2*fc/fs^2)*fi

fs=10*10^2//sampler frequency

fc=10*10^3//counter clock

M=(fs^2)/(2*fc)//multiplication factor

fi=113//input frequency

N=(1/M)*fi//count of counter

printf("count of counter\n")

printf("N=%.2f ",N)