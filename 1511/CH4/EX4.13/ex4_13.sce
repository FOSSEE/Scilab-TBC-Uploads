// Example 4.13 page no-212
clear
clc

rs=200 //Ohm
vz=100 //V
rz=20  // Ohm
il=50 // mA
iz=0.01//mA
ilmax=100 //mA
izmin=0.1*ilmax

vl=vz+iz*rz
printf("\nV_L = %.1f V",vl)
v1=vl+((il/1000)+iz)*rs
printf("\nV1 = %.1fV",v1)
vldash=vl+1
izdash=(vldash-100)/rz
printf("\nIncrease in Iz = %.2f mA",izdash)
it=(il/1000)+izdash
vt=vldash+(rs*it)
printf("\nTotal Current = %.1f A\nTotal Voltage = %.1f V\nchange in V1 =%.0fV\nA change of 11 V in V, on the input side produces a change of\n1V on the output side due to zener diode action",it,vt,vt-v1)
