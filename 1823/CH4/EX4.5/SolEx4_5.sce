//Find (a) VGG; ðbÞ RS, and (c) RD.
//Solved Example Ex4.5 page no 118  
clear
clc
Vgg=10              //V
Vgsq=8              //V
Idq=1*10^-3         //mA
Rs=((Vgg-Vgsq)/Idq)/1000        //kΩ
printf("\n  Rs = %0.2f  K ohm",Rs)
Vdd=16              //V
Vdsq=12             //V
Idq=1
Rd=((Vdd-Vdsq-(Idq*Rs))/Idq)
printf("\n  Rd = %0.2f  K ohm",Rd)

