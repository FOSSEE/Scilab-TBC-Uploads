//Chapter 18, Example 18.10
clc
//Initialisation
VCC=10                          //voltage 
R2=10*10**3                    //resistance in ohm
R1=27*10**3                    //resistance in ohm
RE=100                    //resistance in ohm
RC=2.2                        //resistance in ohm
VBE=0.7                       //base emitter voltage 
av=1                         //small sg voltage gain


//Calculation
VB=VCC*(R2/(R1+R2))                  //Quiescent base voltage
VE=VB-VBE                            //Quiescent emitter voltage
IE=VE/RE                              //Quiescent emitter current
ri=(R1*R2)/(R1+R2)                    //input resistance
ro=1/(40*IE)                          //output resistance



//Results
printf("Small Signal Voltage Gain = %d\n",av)
printf("Small Signal Input Resistance is %.1f kOhm\n",(ri/1000))
printf("Small Signal Output Resistance is %.2f kOhm\n",(ro))
