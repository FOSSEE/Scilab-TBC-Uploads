clear//

//Variables

vin = 2.0 * 10**-3                      //Input voltage (in volts)
gm = 5500.0 * 10**-6                    //Transconductance (in Siemen)
R1=1.0*10**6;R2=1.0*10**6;
RS = 5.0 * 10**3                        //Source resistance (in ohm)
RL = 2.0 * 10**3                        //Load resistance (in ohm)

//Calculation

Av = RS / (RS + 1/gm)                   //Voltage gain 
R1i = R1 * R2 / (R1 + R2)               //Input resistance (in ohm)
R1o = RS * 1/gm /(RS + 1/gm)            //Output resistance (in ohm)
Vo = RL / (RL + R1o) * Av * vin         //Output voltage (in volts)

//Result

printf("\n Voltage gain is  %0.3f .\nInput resistance is  %0.3f  Mega-ohm.\nOutput resistance is  %0.1f  ohm.\nOutput voltage is  %0.2f  mV.",Av,R1i*10**-6,R1o,Vo*10**3)
