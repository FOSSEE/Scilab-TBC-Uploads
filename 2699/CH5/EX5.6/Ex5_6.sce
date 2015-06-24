//EX5_6 PG-5.12
clc
printf("Refer to the figure-5.13 shown in the question no 5.5\n")
//We must find the value of Ic,Ve,Vce using exact analysis
Vbe=0.7;//base emitter voltage for silicon
Vcc=10;//supply voltage
R1=10e3;
Rc=1e3;
R2=5e3;
Re=500;
Beta=100;//voltage gain
Vt=R2*Vcc/(R1+R2);//thevenin's voltage
printf("\n Vt=%.2f V\n",Vt)
Rb=R1*R2/(R1+R2);
printf("\n Rb=%.0f ohm \n",Rb)
Ib=(Vt-Vbe)/(Rb+(1+Beta)*Re);
printf("\n Ib=%.3f microA \n",Ib*1e6)
Ic=Beta*Ib;
printf("\n Ic=%.2f mA \n",Ic*1e3)
Vce=Vcc-Ic*Rc-(Ic+Ib)*Re;//since Vcc-Ic*Rc-Vce-Ie*Re=0
printf("\n Vce=%.3f V \n",Vce)
//the ans for Ve in the book is 2.648V whereas in output it is 2.638V because
// in the book the values has been rounded off so that the final answer is 
//2.648V same is the case for Rb,Ib andIc 
