//Variable declaration
Vs=200                //dc source voltage(V)
Il=5                  //current to load voltage(A)
Vl=15                 //load voltage(V)
eta=.85               //efficiency
f=20                  //oscillator frequency(Hz)
iSmax=2.6             //peak value of supply current(A)
P=100                 //full load power supply(W)
pdf=0.4               //pulse duty factor

//Calculations
Isav=(Vl*Il)/(Vs*eta)   //average peak supply current(A)
iS=(2*Isav)/pdf         //supply current(A)
T=1000/f                //oscillation time period(uS)
tp=pdf*T                //transistor time(us)
d=iS/tp                 //change in iS with respect to time(A/us)
tp1=iSmax/d             //transistor time(us)
pdf1=tp1/T              //pulse duty factor
Isav1=(iSmax*pdf1)/2    //average peak supply current(A)
eta1=(P*100)/(Vs*Isav1) //efficiency

//Results
printf ("peak value of supply current is %.3f A",Isav)
printf ("pdf is %.3f ",pdf)
printf ("overall efficienc is %.1f %%",eta1)
