

//Variable declaration
deltaId=1                         //change in Id(mA)
deltaVgs=0.75                     //change in Vgs(V) 
rd=100                            //internal drain resistance(k ohms)
Rd=100                            //drain resistance(k ohms)
Vgs=2                             //as Vgs= 2sinwt                

//Calculations
gm=(deltaId)/(deltaVgs)           //transconductance(m)  
Vo=-gm*Vgs*((rd*Rd)/(rd+Rd))      // as Vi=2sin(w*t)

//Results
printf ("value of Vo is %.f *sinwt mV",Vo)
