

//Variable declaration
vo=7.5                  //instantaneous voltage(V)
R1=15                   //resistance(k ohms)
Von=0.5                 //voltage of diode when on(V)

//Calculations
Rth=(R1*vo)/(R1+vo)                 //equivalent resistance(V)
T=2*(%pi)/10**4                 //time period(ms)
t1=(asin(Von/2.5))/10**4       //timimgs when D1 conducts(ms)
t2=(T/2)-t1

//Results
printf ("time period is %.3f ms",(T/1E-3))
printf ("t1 is %.3e ms",t1)
printf ( "t2 is %.3f ms",(t2/1E-3))
