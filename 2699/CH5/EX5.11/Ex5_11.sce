//EX5_11 PG-5.26
clc
//for base bias take the figure as shown the Example5.1
Beta=100;
S=1+Beta;//stability factor
printf("\n For base bias: stability factor=%.0f \n",S)
//for collector to base bias the figure as shown the Example5.3
Beta=100;
Rc=10e3;
Rb=100e3
S=(1+Beta)/(1+Beta*(Rc/(Rc+Rb)));
printf("\n For collector to base bias: stability factor=%.0f \n",S)
//for voltage divider  bias take the figure as shown the Example5.5
Re=500;
R1=10e3;
R2=5e3;
Rb=R1*R2/(R1+R2);//R1 and R2 are in parallel
S=(1+Beta)/(1+Beta*(Re/(Re+Rb)));
printf("\n For voltage divider bias: stability factor=%.2f \n",S)
