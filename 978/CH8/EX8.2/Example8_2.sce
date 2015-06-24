//chapter-8,Example8_2,pg 240

fs=50*10^3//sampling rate

delt=2//summation interval

f=50//signal frequency

n=(fs/delt)//value of samples for 2s

maxer1=100/(2*n)//max error for synchronous case

maxer2=(100/(2*fs*delt*sin((2*%pi*f)/fs)))//max error for asynchronous case

printf("max error for synchronous case\n")

printf("maxer1=%.4f \n",maxer1)

printf("max error for asynchronous case\n")

printf("maxer2=%.2f ",maxer2)