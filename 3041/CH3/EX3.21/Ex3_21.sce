

//Variable declaration
deltaId=2.                         //change in Id(mA)
deltaVgs=1.                        //change in Vgs(V)
deltaVds=5.                        //change in Vds(V)
Idss=10.                           //drain current biased to zero(mA)
Id=5.                              //drain current(mA)
Vp=-6.                             //pinch off voltage(V)

//Calculations
//Part a
gm=(deltaId)/(deltaVgs)            //transconductance(mS)
rds=(deltaVds)/(deltaId)           //resistance(k ohms)
gm0=-(2*Idss)/Vp                   //transconductance(mS)
gm=gm0*(sqrt(Id/Idss))        //transconductance(mS)

//Part b
R1=4.5                             //resistance(k ohms)
R2=2                               //resistance(k ohms)
Av=gm*((R1*R2)/(R1+R2))            //voltage gain

//Results
printf ("drain current biased to zero is %.1f mA and pinch off voltage is %.1f V",Idss,Vp)
printf ("value of gm and rds are %.2f mS and %.2f k ohms",gm,rds)
printf ("small signal amplifier gain is %.2f ",Av)
