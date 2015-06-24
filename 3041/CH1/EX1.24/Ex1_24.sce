

//Variable declaration
Vz=2                    //zener voltage(V)
r1=10                   //resistance after reducing circuit by thevinin(ohms)
r2=20                   //resistance after reducing circuit by thevinin(ohms)
V1=7.5                  //voltage after circuit reduction(V)
V2=15                   //voltage after circuit reduction(V)
Rz=100/3                //zener resistance(ohms)

//Calculations
Vab=V2-(((V2-V1)/(r1+r2))*r2)         //thevinin voltage at ab(V)
Rth=(Vab*r2)/(Vab+r2)                 //thevinin resistance at ab(ohms)
Vd=Vab-Vz                             //diode voltage(V)
Id=Vd/(Rth+Rz)                        //diode current(A)

//Results
printf ("diode current is %.2f A",Id)
