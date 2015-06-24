clear all; clc;

disp("Based on the law of Willian we have m_t=0.5+CP_s")
C=(7-0.5)/2512
printf(" Where C= %0.4f lbm/(hp-s)\n",C)

disp("So we have SR=mt/Ps=0.5/Ps+(2.6*10^-3)")
disp("And HR=Q_h*SR")


disp("OR at full load,")
SR_1=(0.5/2512)+(2.6*10^-3)
printf("\n SR_1= %0.4f lbm/(hp-s)=10.1 lbm/(hp-h)",SR_1)

HR_1=1750*10.1
printf("\n HR_1=%0.0f Btu/(hp-h)",HR_1)


disp("at 50% load,")
SR_2=(0.5/1256)+(2.6*10^-3)
printf("\n SR_2= %0.4f lbm/(hp-s)=10.8 lbm/(hp-h)",SR_2)

HR_2=1750*10.8
printf("\n HR_2=%0.0f Btu/(hp-h)",HR_2)





















