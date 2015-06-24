

//Variable declaration 
Rl=500                           //load resistance(ohms)
Vceq=50                          //queinscent collector voltage(V)
beetamin=30                      //current gain minimum(at Q)
Icq=0.4                          //queinscent collector current(A)
Ibq=8                            //queinscent base current(mA)

//Calculations
Rac=Vceq/Icq                       //ac resistance(ohms)
beeta=(Icq*10**-3)/Ibq             //current gain
Re=5/Icq                           //emitter resistance(ohms)
Rc=(512.5*Rac)/(512.5-Rac)         //as Re+Rl=500+12.5=512.5
Vcc=5+Vceq+(Icq*Rc)                //supply voltage(V)   
Rb=(beetamin*Re)/10                //base resistance(ohms)
R1=39.5                            //solving 125=Rc||(Rl+Re) and Vbb=Vcc*(R1/(R1+R2))
R2=750
Pi=120*Icq                         //Vcc chosen as 120
r=(Rc*Rl)/(Rc+Rl)
Poac=(100/(2*sqrt(2)))**2/r  //output power(W)
etamax=Poac/Pi                    //efficiency
Poac1=(100/(2*sqrt(2)))**2/Rl //ac power absorbed by load(W)
eta=Poac1/Pi   
Pc=(Icq**2)*Rc                  //power lost in Rc(W)
Pe=(Icq**2)*Re                  //power lost in Re(W)
Pd=Pi-Pc-Pe-Poac                  //power consumed(W)

//Results
printf ("input power is Pi %.1f W",Pi)
printf ("output power is Po %.2f W",Poac)
printf ("dissipated power is %.2f W",Pd)
printf ("values of R1,R2,Re and Rc are %.1f ohms, %.1f ohms, %.1f ohms and %.f ohms resp.",R1,R2,Re,Rc)
printf("Note : Calculated value of Rc is wrong in the book")
