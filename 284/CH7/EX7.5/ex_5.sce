// Chapter 7_The pn junction Diode
//Caption_Temperature effects on pn Junction current
//Ex_5//page 262
T2=310
T1=300
Eg=1.12    //energy band gap
Va1=0.60    //forward bias voltage at 300k
Va2=Eg-((T2/T1)*(Eg-Va1))
delV=Va2-Va1
printf('Change in fprward bias voltage on a pn junction with the change in temperature is %f V',delV)