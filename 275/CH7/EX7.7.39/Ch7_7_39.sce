clc
disp("Example 7.39")
printf("\n")
disp("Calculate transmission power efficiency and average power in carrier component")
printf("Given \n")
disp("Total power=20KW,Modulation index=0.7")
Pt=2*10^4
Ma=0.7
Pc=Pt/(1+(Ma^2/2))
%n=(Ma^2/(2+Ma^2))*100
printf("The carrier Power  =%f watt\n",Pc)
printf("The transmission power efficiency  =%f",%n)
