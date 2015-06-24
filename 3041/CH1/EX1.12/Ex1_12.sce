//Variable declaration
Vbb=5           //bias voltage(V)
Rl=1            //resistance(ohm)
Id=4.4          //from the figure(mA)

//Part a
i=Vbb/Rl        //load line intercepts the Id axis at i(mA)
Vl=Id*Rl        //load voltage(V)

//Part b
Vd=Vbb-Vl       //diode voltage(V)
P=Vd*Id         //power absorbed in diode(mW)

//Part c        
Ida=1.42         //diode current(mA)for 2V
Idb=7.35         //diode current(mA)for 8V

//Part d
Idc=8.7         //diode current(mA)for Rl=0.5k ohm 
Idd=2.2         //diode current(mA)for Rl=2k ohm

//Results
printf ("diode current is %.1f mA and voltage across the load is %.1f V", Id,Vl)
printf ("power absorbed in diode is %.2f mW",P)
printf ("diode current for Vbb=2V is %.2f mA and for Vbb=8V is %.2f mA",Ida,Idb)
printf ("diode current for Rl=0.5 kohm is %.1f mA and for Rl=2 kohm is %.1f mA",Idc,Idd)
