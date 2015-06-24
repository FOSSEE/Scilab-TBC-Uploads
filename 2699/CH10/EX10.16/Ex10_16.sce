//EX10_16 PG-10.64
clc
disp("Refer to the figure-10.58 and figure-10.58(a)shown")
R1=1e3;
R2=R1;
Rf=5e3;//feedback resistance
R=1e3;//resistance connected to the inverting terminal
V1=1;//first input voltage at the non inverting terminal
V2=3;//second input voltage at the non inverting terminal
Vb=(V1*R2+V2*R1)/(R1+R2);//voltage at the non inverting terminal
Vo=(1+Rf/R)*Vb;//output voltage 
printf("\n Therefore output voltage is Vo=%.0f V \n",Vo)
//alternatively we can find the output voltage by the following equation
Vo1=(R2*(R+Rf))/(R*(R1+R2))*V1+(R1*(R+Rf))/(R*(R1+R2))*V2 
printf("\n Vo=%.0f \n",Vo1)
