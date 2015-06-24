// Example 5.7 page no-289
clear
clc

//(a)
b=48  //beta
vbe=0.6  //V
vcc=20.6 //v
r1= 10 //k-ohm
rc= 5 //K-ohm
T=25    //temperature in Degree C

i=(vcc-vbe)/r1
ib=i/(2+b)
ic=b*ib
printf("\n(a)\nI = %d mA\nIb = %.0f mA \nIc = %.2f mA",i,ib*1000,ic)

//(b)
b2=98 //Beta 
vbe=0.22 //V
I1=(vcc-vbe)/r1
ib1=I1/(2+b2)
ic2 =b2*ib1*1000
printf("\n\n(b)\nI = %.3f mA\nIb = %.2f micro A\nIc = %.0f mA",I1,ib1*1000,ic2/1000)
