clc
disp("Example 1.9")
printf("\n")
disp("find out resistance")
printf("Given\n")
disp("forward current=200mA,Vr=75V,cut in voltage=0.75v,reverse current=50nA")
//all values are from fig 1.9
Vf=0.75
If=200*10^-3 //forward current
Vr=75        
Ir=50*10^-9  //reverse current
Rf=Vf/If      
Rr=Vr/Ir
printf("static forward resistance=\n%f ohm\n",Rf)
printf("static reverse resistance=\n%f ohm\n",Rr)
