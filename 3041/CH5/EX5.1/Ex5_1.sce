

//Variable declaration
Rb=1*10**3                    //base resistance(ohms)
Vcc=20                        //supply voltage(V)
Rc=20                         //collector resistance(ohms) 
beeta=25                      //current gain 
Vbe=0.7                       //base to emitter voltage(V) 
ib=10*10**-3                  //base current(ohms)

//Calculations
Ibq=(Vcc-Vbe)/Rb               //current(A)
Icq=beeta*Ibq                  //current(A)
Vceq=Vcc-(Icq*Rc)              //collector voltage(V)
ic=beeta*ib                    //collector current(A)
Po=((ic/(sqrt(2)))**2)*Rc //output voltage(V)
Pi=Vcc*Icq                     //input power(W)
eta=(Po/Pi)*100                //efficiency     
Pd=Pi-((Icq**2)*Rc)-Po         //power dissipated(W)   

//Results
printf ("input power is Pi %.1f W",Pi)
printf ("output power is Po %.1f W",Po)
printf ("power dissipated is %.1f W",Pd)
