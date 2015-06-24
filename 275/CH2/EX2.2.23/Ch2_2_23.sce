clc
disp("Example 2.23")
printf("\n")
disp("Calculate Average voltage, rectification efficiency & percentage regulation")
printf("Given\n")
V2=30
RL=100
Rf=10
Vm=sqrt(2)*V2
//Average output voltage
Vdc=(((2*Vm)/(%pi))/(1+(Rf/RL)))
//Rectification effeiciency
nr=0.812/(1+(Rf/RL))
//percentage regulation
PR=(Rf/RL)*100
printf("Average output voltage=\t%f volt\n",Vdc)
printf("Rectification efficiency=\t%f\n",nr)
printf("Percentage regulation=\t%f\n",PR)
