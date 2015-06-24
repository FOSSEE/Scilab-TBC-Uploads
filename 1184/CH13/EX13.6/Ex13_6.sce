//Example 13-6,Page No- 503

clear
clc

SWR =3.05
ref_pwr =0.2562
pin =30

pout = pin -(pin*((SWR-1)/(SWR+1))^2)

printf('The output power of the cable is %.3f W',pout)
