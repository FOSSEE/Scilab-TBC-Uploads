//Example 10.4//

//(a)= 0.5 wt % C we must quenchfrom the austenite boundary (770degree C) to ~520 degree in ~0.6, giving
a=770;//degree C //austenite boundary
b=520;//Degree C //temprature
t=0.6;//s //seconds // time
dt1=(a-b)/t
mprintf("dt1 = %i degree C/s",dt1)
//(b)=0.77 wt % C steel, we quench from the eutectoid temperature(727degree C) to ~550degree C in 0.7s, giving
a1=727;//degree C //eutectoid temperature
b1=550;//degree C //temperature
t1=0.7;//s//seconds //time
dt2=(a1-b1)/t1
mprintf("\ndt2 = %i degree C/s",dt2)
//(c)= 1.13 wt %C steel we quench from the austenite boundary (880degree C) to ~550degree C in ~3.5
a2=880;//degree C //eutectoid temperature
t3=0.35;//s //seconds //time
dt3=(a2-b1)/t3
mprintf("\ndt3 = %i degree C/s",dt3)
mprintf("\nThe calculated answer in the textbook is wrong")
