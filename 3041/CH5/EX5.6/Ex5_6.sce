

//Variable declaration
Rl=4.5                    //load resistance(ohms)
Vceq=50                   //Vc at point Q(V)
Icq=400*10**-3            //Ic at Q(A)
Re=12.5                   //emitter resistance(ohms)
Vcemax=90                 //from figure 
Vcemin=10                 //from figure
Icmax=730                 //max Ic(mA)
Icmin=30                  //min Ic(mA)   

//Calculations
//Part a
Rac=Vceq/Icq                //ac resistance(ohms)
n=sqrt(Rac/Rl)         //as n=N1/N2 and Rac=(N1/N2)^2*Rl

//Part b
Vcc=Vceq+(Icq*Re)           //supply voltage(V)   

//Part c
vce=Vcemax-Vcemin                                    //instantaneous collector to emitter voltage(V)
ic=Icmax-Icmin                                       //instantaneous collector current(mA)
Po=(vce*ic)/((2*sqrt(2))*(2*sqrt(2)))      //output voltage(V)
Pi=Vcc*Icq                                           //input voltage(V)  
eta=(Po/Pi)*100                                      //efficiency
Pd=Pi-(Icq**2*Re)-Po*10**-3                          //dissipated power(W)

//Results
printf ("a)transformation ratio is %.2f",n)
printf ("b)Vcc is %.1f V",Vcc)
printf ("c)power efficiency for the load is %.1f %%",eta/1E+3)
printf ("power dissipated is %.1f W",Pd)
