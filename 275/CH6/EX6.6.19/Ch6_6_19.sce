clc
disp("Example 6.19")
printf("\n")
disp("calculate common mode gain & output voltage")
printf("Given")
disp("differential gain=500")
disp("CMRR=80dB,Input signal is 2*sin100*%pi*t")
Ad=500
CMRR=80
t=1/200
Vc=2*sin(100*%pi*t)
//calculate common mode gain
Ac=Ad/(10^(CMRR/20))
//calculate common mode output voltage
Vcmov=Ac*Vc
printf("Common mode gain =%f\n",Ac)
printf("Common mode output voltage =%f volt\n",Vcmov)
