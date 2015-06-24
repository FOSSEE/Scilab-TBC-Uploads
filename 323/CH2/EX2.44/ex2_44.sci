//Chapter 2,Example 2.44<pg2.55
clc;
disp("Refer to the diagram shown in the question")
//It can found out by looking at the figure that I1=10A
I2=100/50 //Applying KVL
Vth=(5*10)-(20*I2)
Rth=5+(20*30/(20+30))
Iload=10/(Rth+10)
printf("\n Rth=%.0f ohms\n",Rth)
printf("\n Il=%.2f A\n",Iload)
