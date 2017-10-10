clear
//Initialization
r1=100                  //Resistance in Ohm
r2=200                 //Resistance in Ohm
r3=50                 //Resistance in Ohm
v1=15                 //voltage source
v2=20                 //voltage source

//Calculation
//Considering 15 V as a source & replace the other voltage source by its internal resistance,
r11=(r2*r3)*(r2+r3)**-1              //resistance in parallel
v11=v1*(r11/(r1+r11))               //voltage
//Considering 20 V as a source & replace the other voltage source by its internal resistance,
r22=(r1*r3)*(r1+r3)**-1              //resistance in parallel
v22=v2*(r22/(r2+r22))               //voltage

//output of the original circuit
v33=v11+v22



//Results
printf("\n Voltage, V = %.2f",v33)

