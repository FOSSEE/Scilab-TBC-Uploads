//chapter2,Example2_2,pg 22

V1=5//input-1

V2=5//input-2

V12=50*10^-3//difference input

Vo=2//output voltage

acc=0.01//accuracy

Ad=(Vo/V12)//diffrential gain

//error at the output should be less than (2/100)V or 20mV.if common mode gain is the only source of error then 

err=Vo*acc//error

Acm=(err/V1)//common mode gain

CMRR=20*log10(Ad/Acm)//common mode rejection ratio in dB

printf("diffrential gain \n")

printf("\nAd=%.1f \n",Ad)

printf("common mode gain \n")

printf("\nAcm=%.4f \n",Acm)

printf("\nCMRR=%.1f dB\n",CMRR)
