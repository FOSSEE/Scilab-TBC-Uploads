//Variable declaration
Vds=7.5                  //drain to source voltage(V)
Idss=8.                  //drain current for Vgs(V)
Vgs=2.                   //gate to source voltage(V)
Vp=4.                    //peak voltage(V)

//Calculations
Id=Idss*((Vp-Vgs)/Vp)**2  //drain current(mA)

//Result
printf ("diode current is %.1f mA",Id)
