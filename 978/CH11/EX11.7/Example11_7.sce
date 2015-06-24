//chapter-11,Example11_7,pg 507

N=12//12-bit synthesizer

k1=1//sampling rate at sampler's rate

k2=4//sampling rate at 4 times sampler's rate

//case-1

adv1=(360/(2^N))//advancement of o/p register 

//2pi rad=360 deg.

//case-2

adv2=(4*(360)/(2^N))//advancement of o/p register 

printf("advancement of o/p register for case-1\n")

printf("adv1=%.4f \n",adv1)

printf("advancement of o/p register for case-2\n")

printf("adv2=%.4f \n",adv2)