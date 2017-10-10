//Chapter 18, Example 18.9
clc
//Initialisation
R1=2*10**3                    //resistance in ohm
R2=5.2*10**3                    //resistance in ohm
pi=3.14                            //pi
c=2.2*10**-6                        //capacitance in farad
ce=10*10**-6                         //capacitance in farad
re=24                                //resistance in ohm

//Calculation
fc1=1/(2*pi*c*R1)                     //cut-off frequency

fc2=1/(2*pi*c*R2)                     //cut-off frequency

fc=1/(2*pi*ce*re)                      //cut-off frequency

//Results
printf("Coupling Capacitor is in the range %d Hz - %d Hz\n",round(fc2),round(fc1))
printf("Decoupling Capacitor, Ce = %d Hz",fc)
