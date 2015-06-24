//Ex3_8 Pg-185
clc
disp("Forward current I is given by ")
disp("  I=I0*exp(V/(n*Vt))-1")

I_22=poly(0,"I_22")
V=0.3 //voltage
n=1 //constant
T1=22+273 //temperature T1 in Kelvin
Vt1=T1/11600
I=I_22*(exp(V/0.025)-1)
disp("When temperature rises to 72 degree celcius, then")

T2=72+273 //temperature T2 in Kelvin
Vt2=T2/11600
TR=T2-T1 //temperature rise
I_72=poly(0,"I_72")
I_72=I_22*(2)^(TR/10)

I_hash=I_72*(exp(V/(Vt2))-1)
for_cur_rises=I_hash/I
disp("Thus, at 72 degree celcius Forward current rises by ")
disp(for_cur_rises)
cur_I=768849.72
cur_I_hash=162753.79
FCR=cur_I/cur_I_hash
printf("\n    = %.2f",FCR)
 //answer in the book  is wrong
