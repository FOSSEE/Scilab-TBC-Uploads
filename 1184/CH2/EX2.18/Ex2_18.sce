//Example 2-18, Page No - 50

clear
clc

Q=200
fr=16*10^6

bw=fr/Q
f1= fr-(bw/2)
f2=fr+(bw/2)

printf('The 3 db down frequencies of the resonant circuit are \nf1=%.2f Mhz\t f2=%.2f Mhz',f1/10^6,f2/10^6)
