clc
disp("Example 1.11")
printf("\n")
disp("findout resistance and cut in voltage")
printf("Given\n")
disp("forward current=100mA,Vr=25V,cut in voltage=0.7v,reverse current=100nA")
//all the values are from fig 1.10
Vf=0.35
If=80*10^-3 //forward current
Vr=40       
Ir=10^-6  //reverse current
Rf=Vf/If      
Rr=Vr/Ir
printf("static forward resistance=\n%f ohm\n",Rf)
printf("static reverse resistance=\n%f ohm\n",Rr)
//from the characteristic curve we can find cut in voltage
printf("cut in voltage= 0.3V")
