//chapter-11,Example11_4,pg 506

C1=4*10^-12

L=94*10^-3//inductance 

C=13*10^-9//capacitance

R=91.3//resistance

f1=(1/(2*%pi))*((L*C)^(-1/2))//resonance frequency-1

f2=(sqrt(1+(C/C1))/(2*%pi*sqrt(L*C)))//resonance frequency-2

printf("resonance frequency-1\n")

printf("f1=%.2f Hz\n",f1)

printf("resonance frequency-2\n")

printf("f2=%.2f Hz",f2)