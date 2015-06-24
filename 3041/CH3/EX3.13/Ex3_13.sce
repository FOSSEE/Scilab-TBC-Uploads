//Variable declaration 
Vt=2                        //threshold voltage(V)
Id=8                        //drain current(mA)
Vgs=6.                       //gate to source voltage(V)
k=0.5                       //device parameter
Vdd=24                      //drain voltage(V)
Vds=10                       //drain to source voltage(V)

//Calculations
//Part a
Vgs1=4                                            //gate to source voltage(V) 
Id1=k*(Vgs1-Vt)**2                                 //drain current(mA)

//Part b
Vgg=3*Vgs1                                         //gate voltage(V)
R2=(Vdd/Vgg)-1                                    //resistance(Mohms)
Rs=(Vgg-Vgs1)/2                                    //source resistance(k ohms)
Rd=(Vdd-Vds-Id1*Rs)/2

//part c
K=1.5*k                   //increased by 50%
Vgs2=3.67                 //solving 12=Vgs+4Id and Id=0.75(Vgs-2)^2 
Id2=2.08                   //drain current when k is increased(mA)
Vds1=Vdd-Id2*(Rd+Rs)      //drain to source voltage(V)

//Results
printf ("drain current defined by Vgs=4 and Vds=10 is %.1f mA",Id1)
printf ("value of Rs,Rd,R2 are %.1f k ohms %.1f k ohms %.1f Mohms resp.",Rs,Rd,R2)
printf ("actual value of Id and Vds are %.2f mA %.2f mA and %.2f V resp.",Id2,Vds1,Vds)
