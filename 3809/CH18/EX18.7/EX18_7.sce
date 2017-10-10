//Chapter 18, Example 18.7
clc
//Initialisation
vcc=15                            //voltage
RC=5.6*10**3                    //resistance in ohm
RE=1.3*10**3                    //resistance in ohm
R2=13*10**3                       //resistance in ohm, 
R1=82*10**3                       //resistance in ohm
pi=3.14                            //pi
fc=10                               //frequency in hertz
VBE=0.7                              //base to emitter voltage

//Calculation
VB=vcc*(R2/(R1+R2))                  //Quiescent base voltage
VE=VB-VBE                            //Quiescent emitter voltage
IE=VE/RE                              //Quiescent emitter current
IC=IE                              //Quiescent collector current
VO=vcc-(IC*RC)                      //Quiescent collector voltage



//Results
printf("Quiescent base voltage = %.2f V\n",VB)
printf("Quiescent emitter voltage = %.2f V\n",VE)
printf("Quiescent emitter current = %.2f mA\n",IE*1000)
printf("Quiescent collector current = %.2f mA\n",IC*1000)
printf("Quiescent collector voltage = %.1f V\n",VO)
