//Variable declaration
Ro=7.5                               //output resistance(ohms)
hfe=50                          
Ve=20                                //voltage given to emitter(V)       
Vbe=0.8                              //base to emitter voltage(V)
Vc=15                                //collector voltage(V)
P=12                                 //maximum power dissipation(W)
Ib1=5                                //for minimum load current Il=0,Ib=5

//Calculations
Io=(Vc/Ro)*10**3                      //output current(A)
Il=76                                 //load current(mA)
Is=Il+5                               //supply current(mA)
Ic=Io-Is                              //collector current(A)
Ib=Ic/hfe                             //base current(mA)
Ie=Ic-Ib                              //emitter current(mA)
Pt=(Ve*Ie)-(Vc*Ic)                    //power dissipated in transistor(W) 
Pl=(Ve-Vbe)*Is-Vc*Il                   //power dissipated in LR
Vimax=(P+Vc*(Ic*10**-3))/(Ie*10**-3)  //input voltage maximum
Iomin=hfe*Ib1                         //output current minimum(mA)

//Results
printf ("power dissipated in the transistor is %.2f W and in LR is %.3f W",Pt/1E+3,Pl/1E+3)
printf ("maximum permissible input voltage is %.2f V",Vimax)
printf ("minimum load current for load voltage to remain stabalized is %.1f mA",Iomin)
