//chapter17
//example17.2
//page377

C1=0.001d-6 // F
C2=0.01d-6 // F
L=15d-6 // H

Ct=C1*C2/(C1+C2) // since both are in series

f=1/(2*%pi*(L*Ct)^0.5)
mv=C1/C2

printf("operating frequency = %.3f Hz or %.3f kHz \n",f,f/1000)
printf("feedback function = %.3f",mv)

//in book the answer given is 1361 kHz but accurate answer is 1362.922 kHz
