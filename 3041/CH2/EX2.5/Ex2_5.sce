//Variable declaration
Vgs=12                   //gate to source voltage(V)
Vt=4                     //threshold voltage(V)
Id=12.8                  //drain current(mA)
K=0.0002                 //device parameter 
Vdd=24                   //drain voltage(V)
Vds=8                //drain to source voltage(V)      
Vgs=8

//Calculations
Id=K*((Vds-Vt)^2)       //drain current at Vds=8V
Rd=(Vdd-Vds)/Id          //drain resistance(k ohms)

//Result
printf ("diode resistance is %.f ohms",Rd)
