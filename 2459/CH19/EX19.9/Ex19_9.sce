//chapter19
//example19.9
//page422

// block diagram is for understanding purpose inly.It is not required to solve the example
m=1
eta=0.72
// carrier is not affected by modulating signal so its power level remains unchanged before and after modulation
Pc=40 // kW
Ps=0.5*m^2*Pc
P_audio=Ps/eta

printf("carrier power after modulation = %.3f kW \n",Pc)
printf("required audio power = %.3f kW \n",P_audio)
