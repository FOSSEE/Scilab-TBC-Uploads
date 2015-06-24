// Example 2.16: Calculate the change in q point
Vcc=20;// Colector voltage in volts
Vbe1=0.7;// Base to emitter voltage  in volts
Vee=20;// emitter voltage  in volts
Rb= 10;// in KILLO OHMS
Beta1=50;//Common emitter D.C. Current gain
Rc=5;// Collector resistance in killo ohms
Re=10;// Emitter resistance in killo ohms
Ie1= (Vee-Vbe1)/(Re+(Rb/Beta1));
Ic1=Ie1;
Vce1a=Vcc -(Ic1*Rc);
Ve=-Vbe1;
Vce1=Vce1a-Ve
disp(Ie1,"Emitter Current in first case in mA")
disp(Vce1,"Collector to ground voltgae in in first case in volts")
Vbe2=0.6;// Base to emitter voltage  in volts
Beta2=50;//Common emitter D.C. Current gain
Ie2= (Vee-Vbe2)/(Re+(Rb/Beta2));
Ic2=Ie2;
Vce2a=Vcc -(Ic2*Rc);
Ve=-Vbe2;
Vce2=Vce2a-Ve
disp(Ie2,"Emitter Current in second case in mA")
disp(Vce2,"Collector to ground voltgae in in first case in volts")
detaIc= ((1.921-1.892)/1.892)*100;
detaVce=((Vce1-Vce2)/Vce2)*100;
disp(detaIc,"Change in collector current in %")
disp(detaVce,"Change in collector to emitter voltage in %")
