//Variable declaration
v1=6                //current through r1(A)   
i2=2                //voltage through r3(V)
i3=4                //voltage through r4(V)
r3=2                //resistance(ohms)
v3=3                //voltage through r3(ohms)
r2=2                //resistance(ohms)
r4=3                //resistance(ohms)

//Calculations
v2=i2*r2                 //voltage through r2(ohms)
v3=i3*r3                 //voltage through r3(ohms)
v4=4*i2+v3-v2-v1         //voltage through r4(ohms)
i4=v4/r4                 //current through r4(A)

//Result
printf ("i4 is %.f A",i4)
