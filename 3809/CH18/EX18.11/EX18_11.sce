//Chapter 18, Example 18.11
clc
//Initialisation
VCC=10                          //voltage 
R2=3*10**3                    //resistance in ohm
R1=7*10**3                    //resistance in ohm
RE=10**3                    //resistance in ohm
RC=3*10**3                        //resistance in ohm
VBE=0.7                       //base emitter voltage 
av=1                         //small sg voltage gain
RE2=2*10**3                    //resistance in ohm
RC2=4*10**3                        //resistance in ohm


//Calculation
VB=VCC*(R2/(R1+R2))                  //Quiescent base voltage
VE=VB-VBE                            //Quiescent emitter voltage
IE=VE/RE                              //Quiescent emitter current
VC1=VCC-(IE*RC)                      //Quiescent collector voltage
VB2=VC1                              //bias voltage
VE2=VB2-VBE                          //emitter voltage
IC2=VE2/RE2                         //collector current in ampere 
VC2=VCC-(IC2*RC2)                   //collector voltage
Av=(-RC/RE)*(-RC2/RE2)              //overall gain



//Results
printf("Quiescent output voltage = %.1f V\n",VC2)
printf("Overall Voltage Gain = %d",Av)
