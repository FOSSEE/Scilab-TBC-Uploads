clc
disp("Example 3.27")
printf("\n")
disp("Find the following terms as given in question 3.27")
printf("Given\n")
//to find collector voltage
//given
Vbe=0.7
Ib=30*10^-6
beta=50
Rc=12*10^3
Vcc=25
//collector current
Ic=beta*Ib
//collector voltage
Vc=Vcc-(Ic*Rc)
//to find voltage gain
//given
Vi=50*10^-3
Ib1=15*10^-6
Ic1=beta*Ib1
Vo=Ic1*Rc
//voltage gain
Av=Vo/Vi
//to find Vce
//given
Vbe=0.73
Ib2=40*10^-6
Ic2=beta*Ib2
Vce=Vcc-(Ic2*Rc)
//to find voltage gain when Rc changed to 6.8k
Rc1=6.8*10^3
Vo1=Ic1*Rc1
Av1=Vo1/Vi
//to find current gain of replaced transistor
//given
Vc1=9
Vrc=Vcc-Vc1
Ic3=Vrc/Rc
beta1=Ic3/Ib
printf("collector voltage \n%f volt \n",Vc)
printf("Voltage gain for vi=50mv \n%f\n",Av)
printf("Vce if Vbe=0.73 is \n%f volt\n",Vce)
printf("Voltage gain when Rc=6.8k \n%f Volt\n",Av1)
printf("current gain of replaced transistor \n%f\n",beta1)
