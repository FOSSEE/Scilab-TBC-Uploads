//Chapter 18, Example 18.3
clc
//Initialisation
VCC=10                          //voltage 
R2=10*10**3                    //resistance in ohm
R1=27*10**3                    //resistance in ohm
RE=1*10**3                    //resistance in ohm
RC=2.2                        //resistance in ohm
VBE=0.7                          //base emitter voltage 



//Calculation
VB=VCC*(R2/(R1+R2))                  //Quiescent base voltage
VE=VB-VBE                            //Quiescent emitter voltage
IE=VE/RE                              //Quiescent emitter current
IC=IE                              //Quiescent collector current
VO=VCC-(IC*RC)                      //Quiescent collector voltage




//Results
printf("Quiescent base voltage = %.2f V\n",VB)
printf("Quiescent emitter voltage = %d V\n",VE)
printf("Quiescent emitter current = %d mA\n",IE*1000)
printf("Quiescent collector current = %d mA\n",IC*1000)
printf("Quiescent collector voltage = %.1f V\n",VO)             //wrong answer on textbook
