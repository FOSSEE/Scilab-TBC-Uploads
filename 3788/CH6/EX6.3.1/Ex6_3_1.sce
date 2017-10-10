//Example 6.3.1
//Calculate the no of digital channels 
//Variables
clc
clear
Tframe=2000              //20ms
N = 5                    //5us
tg=5
tpre = 20
datarate = 64000
QPSKsymbol = 2
QPSKTxburst = 30             //30mbaud

Td = (Tframe-N*(tg+tpre))/N
Rb = QPSKsymbol*QPSKTxburst
Cb = Td*(((Rb*(10)^6))/Tframe)
n = (Cb)/64000
printf("The number of 64kbps digital sppech channels that \n can be carried by one earth station is %d",n)
