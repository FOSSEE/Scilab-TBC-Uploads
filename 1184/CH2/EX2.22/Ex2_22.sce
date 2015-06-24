//Example 2-22, page no - 55

clear
clc

bw = 1*10^6
XL = 300
Rw = 10
fr =10*10^6

Q1 = XL/Rw
Rp = Rw*(Q1^2+1) 

Q2 = fr/bw
Rpnew = Q2*XL

Rext = (Rpnew*Rp)/(Rp-Rpnew)

printf('The value of resistor needed to set the bandwidth of \nthe parellel tuned circuit to 1 Mhz is %.1f ohm',Rext)
