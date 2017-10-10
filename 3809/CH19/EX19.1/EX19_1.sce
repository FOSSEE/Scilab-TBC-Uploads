//Chapter 19, Example 19.1

clc
//Initialisation
r3=1.222*10**3                 //resistance in ohm
r4=1*10**3                 //resistance in ohm
v1=0.7                       //voltage
vz=4.7

//Calculation
vo=(vz+v1)*((r3+r4)/r4)         //Output Voltage


//Results
printf("Output Voltage Vo = %d V",round(vo))


