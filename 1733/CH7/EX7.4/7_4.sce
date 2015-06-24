//7.4
clc;
V=230;
R=60;
Po_max=V^2/R;
disp('When power output is 400')
Po=400;
Duty_cycle=Po/Po_max;
printf("Duty cycle=%.4f", Duty_cycle)
Ton=0.4537;
T=1;
Toff=1-Ton;
Ratio=Ton/Toff;
printf("\nRatio of Ton and Toff when power output is 400=%.4f", Ratio)
disp('When power output is 700')
Po=700;
Duty_cycle=Po/Po_max;
printf("Duty cycle=%.4f", Duty_cycle)
Ton=0.794;
T=1;
Toff=1-Ton;
Ratio=Ton/Toff;
printf("\nRatio of Ton and Toff when power output is 700=%.4f", Ratio)