clear
//Given
N=5.0
A=230                   //V
B=2
Rl=100

//Calculation
//
V1=A/N
V2=V1*sqrt(2)
Vm=V2/B
Idc=2*Vm/(%pi*Rl)
Vdc=Idc*Rl

//Result
printf("\n (i) d.c voltage output is %0.1f  V",Vdc)
printf("\n (ii) peak inverse voltage is %0.0f  V",V2)
