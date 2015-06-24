clc
disp("Example 3.25")
printf("\n")
disp("Find the DC collector voltage & voltage gain of circuit for Vi=50mV")
printf("Given\n")
//base current for Vbe=0.7
Ib=30*10^-6
Vbe=0.7
beta=80
//collector current
Ic=beta*Ib
//given from ckt
Vcc=20
Rc=5.8*10^3
//writing KVL for Common Emitter circuit
Vc=Vcc-(Ic*Rc)
//for input characteristics delVi=delVb=50mV
Vi=50*10^-3
delIb=5*10^-6
Ic1=beta*delIb
//output voltage
Vo=Ic1*Rc
//voltage gain
Av=Vo/Vi
printf("Dc collector voltage \n%f volt\n",Vc)
printf("voltage gain \n%f\n",Av)
