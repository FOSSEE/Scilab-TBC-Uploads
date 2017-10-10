//Chapter 18, Example 18.8
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
hfe1=100
hfe2=400

//Calculation
VB=vcc*(R2/(R1+R2))                  //Quiescent base voltage
VE=VB-VBE                            //Quiescent emitter voltage
IE=VE/RE                              //Quiescent emitter current
IC=IE                              //Quiescent collector current
VO=vcc-(IC*RC)                      //Quiescent collector voltage

re=1/(40*IE)
av=-RC/re                            //voltage gain
rp=(R1*R2)/(R1+R2)

//if hfe=100
hie1=hfe1*re
ri1=(rp*hie1)/(rp+hie1)

//if hfe=400
hie2=hfe2*re
ri2=(rp*hie2)/(rp+hie2)

ro=RC

//Results
printf("Small Signal Voltage Gain = %d\n",av)
printf("Small Signal Input Resistance is %d kOhm to %.1f kOhm\n",round(ri1/1000),(ri2/1000))
printf("Small Signal Output Resistance is %.1f kOhm\n",(RC/1000))

