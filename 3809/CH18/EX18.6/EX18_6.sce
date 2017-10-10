//Chapter 18, Example 18.6
clc
//Initialisation
vcc=15                            //voltage
vc=9.5                            //voltage
ic=10**-3                         //collector current
Ie=10**-3                         //emitter current
RE=5.6*10**3                    //resistance in ohm
RC=1.3*10**3                    //resistance in ohm
R2=13*10**3                       //resistance in ohm, choosen R2 as approximately 10 times RE
pi=3.14                            //pi
fc=10                               //frequency in hertz


//Calculation
rc=(vcc-vc)/ic                     //resistance in ohm
re=rc/4                       //resistance in ohm
vg=-RC/(RE+re)                     //voltage gain
R1=(R2*(vcc-2))/2                   //resistance in ohm
Ri=(R1*R2)/(R1+R2)                   //input resistance in ohm
c=1/(2*pi*fc*Ri)                     //cut-off frequency



//Results
printf("C = %.1f uF\n",c*10**6)
printf("R1 = %.1f kOhm\n",R1/10**3)
printf("R2 = %d kOhm\n",R2/10**3)
printf("RC = %.1f kOhm\n",rc/10**3)
printf("RE = %.1f kOhm\n",re/10**3)
