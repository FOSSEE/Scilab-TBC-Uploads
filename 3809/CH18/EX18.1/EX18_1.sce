//Chapter 18, Example 18.1
clc
//Initialisation
VCC=10                          //voltage 
VBE=0.7                          //base emitter voltage 
RB=910*10**3                    //resistance in ohm
hfe=100                          //HFE parameter of the transistor
RC=4.7*10**3                    //resistance in ohm


//Calculation
IB=(VCC-VBE)/RB                     //base current in ampere
IC=hfe*IB                            //collector current in ampere
Vq=VCC-(IC*RC)                       //quiescent output voltage


//Results
printf("Quiescent Output Current = %.2f mA\n",IC*1000)
printf("Quiescent Output Voltage = %.1f V\n",Vq)
