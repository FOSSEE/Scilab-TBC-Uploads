clc
//Example 6.10
//Calculate the voltage across 20 ohm capacitor
//Consider the circuit to be solved by superposition principle
disp('Consider the current source 2(90 deg)only')
//From figure 6.32
//Let I1 be the current through -i*4 capacitive reactance
Imag=2;Iph=90;
i=%i
x=Imag * cos (( Iph * %pi ) /180) ;
y=Imag * sin (( Iph * %pi ) /180) ;
I= complex (x,y)
I1=(I*(i*15))/(i*5+i*15-i*4)
//Let V20 be the voltage across -i*4 capacitive reactance
V200=(-i*4)*I1
printf("V20=%3.2fV \n",V200)
disp('Consider the 20 V voltage source only')
V=20;
//From figure 6.35
//let V201 be the voltage across -i*5 capacitive reactance
V201=-V
printf("V201=%d V \n",V201)
disp('Consider the current source 1(90 deg)only')
I1mag=1;I1ang=90;
//From figure 6.37
//Let V202 be the voltage across -i*5 capacitive reactance
V202=(-i*5)*I1mag*i
printf("V202=%3.2fV \n",V202)
//Let V20 be the voltage across -i*20 capacitive reactance
V20=V200+V201+V202
printf("\n V20=%3.2fV \n",V20)
