//Variable declaration
Vs=4                    //source voltage(V)
R1=10.                   //resistance(k ohms)
Vb=2                 //voltage at point A and point B
Va=2
Rf=30                   //forward resistance(k ohms)

//Calculations
I=(Vs-Vb)/R1           //current(mA)
Vo=(-I*Rf)+Vb          //output voltage(V)  

//Result
printf ("output voltage %.1f  V",Vo)
