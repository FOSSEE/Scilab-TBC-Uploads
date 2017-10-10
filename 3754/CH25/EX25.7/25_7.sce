clear//

//Variables

hic = 2.0 * 10**3                           //hic (in ohm)
hfc = -51.0                                 //hfe
hrc = 1.0                                   //hrc
hoc = 25.0 * 10**-6                         //hoc (in mho)
rL=5.0*10**3;RE=5.0*10**3;
RS = 1.0 * 10**3                            //Source resistance (in ohm)
R1=10.0*10**3;R2=10.0*10**3;

//Calculation

Ai = -hfc / (1 + hoc * rL)                  //Current gain
Ri = hic + hrc * Ai * rL                    //Input resistance (in ohm)
Ris = (R1*R2*Ri)/(Ri*R1 + Ri*R2 + R1*R2)    //Input resistance of the amplified stage (in ohm)
Ro = -(RS + hic)/hfc                        //Output resistance (in ohm)
Ros = Ro * RE / (Ro + RE)                   //Input resistance of the amplified stage (in ohm)
Ais = Ai * RS / (RS + Ris)                  //Current gain of amplified stage 
Av = Ai * rL / Ri                           //Voltage gain
Avs = Av * Ris / (RS + Ris)                 //Voltage gain of amplified stage 

//Result

printf("\n The value of input resistance of amplified stage is  %0.0f  ohm.\nThe value of output resistance of amplified stage is  %0.f  kilo-ohm.\nThe value of current gain of amplified stage is  %0.1f  .\nThe value of voltage gain of amplified stage is  %0.3f  .",Ris,abs(Ros),Ais,Avs)
