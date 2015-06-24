clc
disp("Example 3.26")
printf("\n")
disp("FInd the DC current gain for circuit fig 3.15 and ac voltage gain")
printf("Given\n")
//to find dc current gain
//given
Vcc=15
Vc=7
Rc=5.6*10^3
Ib=20*10^-6
//to find Vrc
Vrc=Vcc-Vc
//collector current
Ic=Vrc/Rc
//dc current gain
betadc=Ic/Ib
//to find ac voltage gain
//given
Vi=50*10^-3
delIb=10*10^-6
delIc=betadc*delIb
//output voltage
Vo=delIc*Rc
//voltage gain
Av=Vo/Vi
printf("DC current gain \n%f\n",betadc)
printf("voltage gain \n%f\n",Av)
