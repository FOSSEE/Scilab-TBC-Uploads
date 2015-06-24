clc
disp("Example 7.42")
printf("\n")
disp("Find the saving power if power contained in the LSB alone is used")
printf("Given\n")
disp("Total power=20KW,Modulation Index=0.8")
Pt=20*10^3
Ma=0.8
Pc=Pt/(1+(Ma^2/2))
Plsb=(Pt-Pc)/2
%Ps=((Pt-Plsb)/Pt)*100
printf("power in sideband=%f watt\n",Plsb)
printf("Saving in power=\n%f\n",%Ps)
