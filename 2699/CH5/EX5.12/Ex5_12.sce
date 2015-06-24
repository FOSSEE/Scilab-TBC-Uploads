//EX5_12 PG-5.28
clc
disp("Refer to the figure-5.25 shown")
Icbo1=2e-6;//at a temperature T1=25 degree celsius
Vbb=5;
Vbe=0.1
disp("Icbo doubles for every 10 degree Celsius")
T1=25;//temperature in degree celsius
T2=80;//temperature in degree celsius
Icbo2=Icbo1*2^((T2-T1)/10);//at a temperature T2=80 degree celsius
printf("\n Therefore Icbo2=%.2f microA \n",Icbo2*1e6)
disp("Apply KVL to the base circuit Vbb=Vbe+Icbo2*Rb we get")
Rb=(Vbb-Vbe)/Icbo2;
printf("\n Rb=%.3f kohm \n",Rb*1e-3)
