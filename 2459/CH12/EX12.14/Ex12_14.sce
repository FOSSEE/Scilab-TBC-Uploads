//chapter12
//example12.14
//page251

Vcc=20 // V
Re=5 // kilo ohm
Rc=1 // kilo ohm
Vbe=0 // considering it as negligible
R1=10 // kilo ohm
R2=10 // kilo ohm

V2=Vcc*R2/(R1+R2)

// since V2=Vbe+Ie*Re so 
Ie=(V2-Vbe)/Re
Ic=Ie

Vce=Vcc-Ic*(Rc+Re)
Vc=Vcc-Ic*Rc

printf("emitter current = %.3f mA \n",Ie)
printf("collector emitter voltage = %.3f V \n",Vce)
printf("collector potential = %.3f V \n",Vc)
