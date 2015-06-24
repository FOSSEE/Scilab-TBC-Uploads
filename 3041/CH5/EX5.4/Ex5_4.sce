

//Variable declaration
Vcc=15                   //supply voltage(V)
beeta=40.                //current gain
Icq=5.                   //Ic at Q(mA)
Vceq=7.5                 //Vce at Q(V)      
icswing=10               //swing in ic(mA) 

//Calculations
//Part a
Rl=Vceq/Icq*10**-3       //load resistance(ohms)    

//Part b
Ibq=Icq/beeta            //base current at Q(uA)

//Part c
ibswing=icswing/beeta                   //swing in ib(mA)
Pac=Rl*(icswing/(2*sqrt(2)))**2    //ac power(W)
Pdc=Vcc*(Icq*10**-3)                    //dc power(W)
eta=(Pac/Pdc)*100                       //efficiency

//Results
printf ("a)value of Rl is %.f ohms",Rl/1E-6)
printf ("b)Ibq is %.f uA",Ibq/1E-3)
printf ("c)ac power output is %.2f mW",Pac/1E-3)
printf ("efficiency is %.1f %%",eta)
printf ("corresponding swing in ib is %.2f mA",ibswing)
