//Determine appropriate values of RS and RD.
//Solved Example Ex4.8 page no 120  
clear
clc
Rs=750          //kΩ
printf("\n  Rs = %0.2f  K ohm",Rs)
Vdd=24          //V
Vdsq=15         //V
Idq=0.002        //mA
Rd=((Vdd-Vdsq-(Idq*Rs))/Idq)/1000
printf("\n  Rd = %0.2f  K ohm",Rd)
