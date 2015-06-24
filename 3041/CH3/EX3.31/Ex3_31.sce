//Variable declaration
Vcc=15             //supply voltage(V)
beeta=30           //current gain 
R=.47            //emitter resistance(ohms)  
Vbe=0.7            //base to emitter voltage(V)
Vo=5               //output voltage(V)

//Calculations
Vbb=Vcc/2                                   //base voltage(V)
Ib=Vo/(R*930)    //from equation(i)
R1=((6.1-4.98)/0.0114)*2                     //resistance(k ohms)  

//Results
printf ("value of R1 is %.f K ohms",R1)
