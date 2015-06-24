//Variable declaration
k=2.                       //device parameter
Vt=-1.                     //threshold voltage(V)
Vdd=-12.                   //drain voltage(V)
R1=300.                    //resistance(kohms)
R2=100.                    //resistance(kohms)

//Calculations
//Part a
Vgs=-2                  //gate to source voltage(V)
Vgg=(R2*Vdd)/(R1+R2)    //gate voltage(V)
Id=k*((Vgs-Vt)**2)      //drain current(mA)
Rs=(Vgs-Vgg)/Id         //source resistance(k ohms) as Id=Is,Kvl in GS loop
Is=Id

//Part b
Vds=-4                    //drain to source voltage(V)
Rd=(-Vdd+Vds-(Is*Rs))/Id  //applying kvl in DS loop

//Part c 
Vt=-1.5                      //threshold voltage(V)             
Vgg=-1.5                     //gate voltage using Id formula    
R2new=(Vgg*R1)/(Vdd-Vgg)     //new resistance(k ohms)

//Results
printf ("a)source resistance is %.1f kohm",Rs)
printf ("b)drain resistance is %.1f kohm",Rd)
printf ("c)R2new is %.2f kohm",R2new)
