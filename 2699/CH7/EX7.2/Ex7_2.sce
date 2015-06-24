//Ex7_2 PG-7.17
clc
Vi=50e-3//input supply
Rd=5e3;
Yfs_max=4000e-6;
Yfs_min=1000e-6;
disp(" For Yfs_max=4000e-6")
Id_delta=Yfs_max*Vi;
printf("\n Change in Id is +/- %.1f mA \n",Id_delta*1e3)
Vo=Id_delta*Rd;//output voltage 
Av=Vo/Vi;//voltge gain
printf("\n Voltage gain is %.0f \n",Av)
disp(" For Yfs_min=1000e-6")
Id_delta=Yfs_min*Vi;
printf("\n Change in Id is +/- %.2f mA \n",Id_delta*1e3)
Vo=Id_delta*Rd;//output voltage 
Av=Vo/Vi;//voltge gain
printf("\n Voltage gain is %.0f \n",Av)
//In the book this example is mention as Example-7_1
//but  it is the second example in this chapter so I've taken this as Example-7_2 
