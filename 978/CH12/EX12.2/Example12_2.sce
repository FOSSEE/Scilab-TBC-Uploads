//chapter-12,Example12_2,pg 383

fc=10^6//carrier frequency

m=0.4//modulation index

fs=100//signal frequency

V=2//(+/-)2V range

delfc1=m*fc//frequency deviation for FS(full scale)

//(+/-) 2V corresponds to delfc Hz deviation assuming linear shift, for (+/-)1V

delfc2=delfc1/V//frequency deviation for (+/-)1V range

sig=(delfc1/fs)//deviation factor

printf("frequency deviation for FS\n")

printf("delfc1=%.2f Hz\n",delfc1) 

printf("frequency deviation for given range\n")

printf("delfc2=%.2f Hz\n",delfc2) 

printf("deviation factor\n")

printf("sig=%.2f",sig)