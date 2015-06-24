

//Variable declaration
Vp=4                    //peak voltage(V)
Idss=12.                //drain current for Vgs(V) 
Vdd=12                  //drain voltage(V)
Id=4.                   //drain current(mA)
Vds=6                   //drain to source voltage(V)

//Calculations
Rs=(Vp/4)*(1-(sqrt(Id/Idss)))      //by Id=Idss(1-(Vgs/Vp))^2 and putting Vgs=4Rs in it and solving
Rd=((Vdd+Vds)/Id)-Rs                    //solving equation -Vdd-Vds+(Id*(Rd+Rs))=0      
                                             
//Result
printf ("source resistance is %.2f kohm",Rs)
printf ("drain resistance %.2f kohms",Rd)
