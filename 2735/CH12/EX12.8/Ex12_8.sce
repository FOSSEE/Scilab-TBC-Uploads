clc
clear
//Initialization of variables
p1=400 //psia
t1=600 //F
h1=1306.9 //Btu/lbm
b1=480.9 //Btu/lbm
p2=50 //psia
h2=1122 //Btu/lbm
h3=1169.5 //Btu/lbm
b3=310.9 //Btu/lbm
//calculations
disp("All the values are obtained from Mollier chart,")
dw13=h1-h3
dw12=h1-h2
dasf=b3-b1
etae=dw13/dw12
eta=abs(dw13/dasf)
dq=dw13+dasf
//results
printf("Engine efficiency = %.1f percent",etae*100)
printf("\n Effectiveness = %.1f percent",eta*100)
printf("\n Loss of available energy  = %.1f Btu/lbm",dq)
