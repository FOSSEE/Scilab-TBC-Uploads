//EX5_1 PG 5.4
clc
disp("  Refer to the figure-5.5 shown")
disp("i) When Rb=300 kohm")
disp("   Base emitter junction is not reverse biased ")
disp("   Assume transistor is operating in active region")
Rb=300e3;
Rc=2e3;//collector resistance
Vcc=10;//supply voltage
Vbe=0.7;//base emitter voltage
disp("   We know that Vcc=Ib*Rb+Vbe ")
Ib=(Vcc-Vbe)/Rb;//since Vcc=Ib*Rb+Vbe
printf("\n    base current Ib is: %.2f microA \n",Ib*1e6)
Beta=100;
Ic=Beta*Ib;//colector current in active region
printf("\n    Collector current is %.1f mA \n",Ic*1e3)
disp("   Applying KVL around collector loop ie Vcc=Ic*Rc+Vce")
Vce=Vcc-Ic*Rc;//since Vcc=Ic*Rc+Vce
printf("\n    Now Vce= %.1f V \n\n",Vce)
printf("   Since Vce=3.8 V collector to base junction is reverse biased and we can say \n   that our assumption that transistor is in active region is justified")
printf("\n\n ii)When Rb=150 kohm\n\n")
disp("   base emitter junction is not reverse biased ")
Rb=150e3;
disp("   assume transistor is operating in active region")
disp("   Applying KVL around base loop ie Vcc=Ib*Rb+Vbe")
Ib=(Vcc-Vbe)/Rb;//since Vcc=Ib*Rb+Vbe
printf("\n    base current Ib is: %.0f microA \n",Ib*1e6)
Ic=Beta*Ib;//colector current in active region
printf("\n    Collector current is %.1f mA \n",Ic*1e3)
disp("   Applying KVL around collector loop ie Vcc=Ic*Rc+Vce")
Vce=Vcc-Ic*Rc;//since Vcc=Ic*Rc+Vce
printf("\n    Therefore Vce= %.1f V \n\n",Vce)
printf("    Collector voltage Vce has to be +ve or zero but Vce=-2.4 V hence \n    transistor is not in active region but it is in saturation region\n\n ")
Vbe_sat=0.8;//base saturation voltage
Vce_sat=0.2;//collector saturation voltage
disp("   Applying KVL around base loop ie Vcc=Ib*Rb+Vbe_sat")
Ib=(Vcc-Vbe_sat)/Rb;//since Vcc=Ib*Rb+Vbe_sat
printf("\n    base current Ib is: %.0f microA \n",Ib*1e6)
disp("   Applying KVL around collector loop ie Vcc=Ic*Rc+Vce_sat")
Ic=(Vcc-Vce_sat)/Rc//since Vcc=Ic*Rc+Vce_sat
printf("\n    Collector current is %.1f mA \n",Ic*1e3)
printf("    To justify transistor is in saturation then \n    Ib must be greater than (Ic/Beta)")
x=Ic/Beta
 printf("\n\n    Now Ib=%.0fnmicroA \n \n   (Ic/Beta)=%.0f microA \n",Ib*1e6,x*1e6)
if (Ib>x) then//x=(Ic/Beta)
disp("   Hence transistor in saturation region is satisfied ")    
end
