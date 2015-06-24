

//Variable declaration
f=50.              //frequency(Hz)
dv=7.              //difference between maximum and minimum(25-18)voltages across the load(V)
Ic=100.            //load current(mA)

//Calculations
dt=1/(2*f)        //time of discharge(seconds)
C=Ic/(dv/dt)      //capacitance(uF) 

//Results
printf ("value of capacitor is %.2f uF",(C/1E-3))
