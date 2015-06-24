//Variable declaration
Vz=100          //zener voltage(V)
Rz=25           //diode resistance(ohm)
Il=0.05         //load current(A)
Iz=0.01         //zener diode current(A)
Rs=250          //supply resistance(ohm)

//Calculations
Vl=Vz+(Iz*Rz)     //load voltage(V)
Vs=Vl+(Il+Iz)*Rs  //supply voltage(V)
VL=Vl*1.01        //increase in Vl(V)
IZ=(VL-Vz)/Rz     //increase in zener current
VS=Vl+(Il+IZ)*Rs  //increase in supply voltage(V)
Vss=(VS-Vs)/Vs    //%increase in supply voltage(V)
P=Il*VL           //power consumed(W) 

//Results
printf ("load voltage is %.2f V",Vl)
printf ("supply voltage is %.2f V",Vs)
printf ("increase in supply voltage is %.3f V",VS)
printf ("power consumed is %.2f W",P)
