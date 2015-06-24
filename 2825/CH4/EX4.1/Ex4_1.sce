//Ex4_1 Pg-213
clc

Vrms=110 //rms volatage in V
Vm=Vrms/0.707 //peak source voltage
printf("Peak source voltage=%.1f V",Vm) //textbook answer wrong

disp("(a) With an ideal diode ")
Vpout=Vm //peak output voltage
printf("\n Peak output voltage=%.1f V",Vpout)
Vdc=Vm/%pi //Dc load voltage
printf("\n DC load voltage=%.2f V \n",Vdc) //textbook answer wrong

disp("(b) With second approximation")
Vpin=Vm //peak input voltage
Vpout=Vpin-0.7
printf("\n Peak output voltage=%.1f V",Vpout)
Vdc=Vpout/%pi //Dc load voltage
printf("\n DC load voltage=%.1f V \n",Vdc) //textbook answer wrong

