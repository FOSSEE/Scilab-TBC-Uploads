//chapter-7,Example7_8,pg 498

V2=0.130//output-1

V1=0.103//output-2

Vx=0.4//peak amplitude

delt=0.1*10^-3//time delay

f1=(1/(2*%pi*delt))*(asin(V2/Vx)-asin(V1/Vx))//frequency of sinusoid

printf("frequency of sinusoid\n")

printf("f1=%.2f Hz",f1)