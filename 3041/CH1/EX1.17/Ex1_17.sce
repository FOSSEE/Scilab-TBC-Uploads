//Variable declaration
Vh=60.           //higher output voltage(V)
Vl=45.           //lower output voltage(V)  
fz=50.           //frequency(Hz)
Vr=15.           //peak to peak ripple voltage(V)
Rl=600.          //resistance(ohms)
     
//Calculations
Vldc=(Vh+Vl)/2   //avg load dc voltage(V) as voltage drops from 60 to 45
Idc=Vldc/Rl      //dc current(A)
T=1/fz           //discharging time(ms)
C=(Idc*T)/Vr     //linear discharge rate(uF)
C1=C*2           //new capacitance(uF)

Vr1 = (20*120*1000)/(1200*254)
Idc1=(Vh-(Vr1/2))/Rl               //dc load current(mA)

//Results
printf ("value of capacitance is %.f uF",C/1E-6)
printf ("Vr1 is %d V" ,Vr1)
printf ("dc load current Idc is %.f mA",Idc1/1E-3)
printf("Note : Answer may be vary because of rounding off error.")
