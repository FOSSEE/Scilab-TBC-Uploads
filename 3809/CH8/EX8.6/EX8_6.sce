//Chapter 8, Example 8.6
clc
//Initialisation
f1=1000                       //frequency in hertz
f2=10                       //frequency in hertz
f3=100                       //frequency in hertz
f4=20                       //frequency in hertz
f5=10**6                       //frequency in hertz
f6=50                       //frequency in hertz

//Calculation
f11=f1*2                        //an octave above 1 kHz
f22=f2*2*2*2                    //three octaves above 10 Hz
f33=f3/2                        //an octave below 100 Hz
f44=f4*10                       //a decade above 20 Hz
f55=f5/10/10/10                 //three decades below 1 MHz
f66=f6*10*10                    //two decades above 50 Hz


//Result
printf("(a) an octave above 1 kHz = %d kHz \n",f11/1000)
printf("(b) three octaves above 10 Hz = %d Hz \n",f22)
printf("(c) an octave below 100 Hz = %d Hz \n",f33)
printf("(d) a decade above 20 Hz = %d Hz \n",f44)
printf("(e) three decades below 1 MHz = %d kHz \n",f55/1000)
printf("(f) two decades above 50 Hz = %d kHz \n",f66)
