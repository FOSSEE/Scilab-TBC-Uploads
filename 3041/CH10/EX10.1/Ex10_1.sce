//Variable declaration
i1=4.           //current through r1(A)      
v3=3            //voltage(V)
v4=8            //voltage(V)
r3=3            //resistance(ohms)
r2=2            //resistance(ohms)
r4=4            //resistance(ohms)

//Calculations
i3=v3/r3                //current through r3(A)
i4=v4/r4                //current through r4(A)
i2=-(i3+i4-i1)/2        //current through r2(A)
v2=i2*r2                //voltage through r2(V)

//Result
printf ("v2 is %.1f V",v2)
