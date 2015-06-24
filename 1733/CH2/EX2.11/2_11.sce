//2.11
clc;
Idc=50;
Vdc=10*1000/Idc;
Vm=200*%pi/2;
PIV_central_tap=2*Vm;
V_rating_central_tap =2*PIV_central_tap;
printf("The rated voltage of full wave central tap transformer rectifier = %.2f V", V_rating_central_tap )
PIV_bridge=Vm;
V_rating_bridge=2*PIV_bridge;
printf("\nThe rated voltage of full wave bridge rectifier = %.2f V", V_rating_bridge )