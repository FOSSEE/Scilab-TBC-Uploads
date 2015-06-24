//chapter12
//example12.13
//page250

R1=50 // kilo ohm
R2=10 // kilo ohm
Re=1 // kilo ohm
Vcc=12 // V
Vbe1=0.1 // V
Vbe2=0.3 // V

V2=Vcc*R2/(R1+R2) // voltage across R2

// for Vbe=0.1 V
Ic1=(V2-Vbe1)/Re

// for Vbe=0.3 V
Ic2=(V2-Vbe2)/Re

printf("for V_BE=0.1 V, collector current = %.3f mA \n",Ic1)
printf("for V_BE=0.3 V, collector current = %.3f mA \n \n",Ic2)

Vbe_change=100*(Vbe2-Vbe1)/Vbe1
Ic_change=-100*(Ic2-Ic1)/Ic1 // negative sign since Ic decreases
printf("comment : if V_BE changes by %.5f percent, \ncollector current changes by %.3f percent \n",Vbe_change,Ic_change)
printf("so collector current is independent of transistor parameter variations \n")

// the change in V_BE is 200 percent not 300 percent.It is mistake in textbook
