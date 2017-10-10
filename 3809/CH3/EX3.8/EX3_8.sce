//Chapter 3, Example 3.8
clc
Re=10                  //resistance in ohm
//To solve simulataneous equation by converting them itno matrices form
a=[-160 20 30;20 -210 10;30 10 -190]
b=[-50;0; 0]
x=a\b
Ve=Re*(x(3)-x(2))             //voltage 

//Results
printf("I1 = %.2f mA\n",x(1)*1000)
printf("I2 = %.2f mA\n",x(2)*1000)
printf("I3 = %.2f mA\n",x(3)*1000)
printf("Voltage, VE = %.2f V\n",Ve)
