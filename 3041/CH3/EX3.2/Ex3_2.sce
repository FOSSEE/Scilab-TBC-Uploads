

//Variable declaration
Id=1.6               //drain current(mA)
Vgs=-3               //gate to source voltage(V)
Id1=.4               //drain current(mA)
Vgs1=-4              //gate to source voltage(V)   
Vp=-5                //peak voltage(V) by solving equations 1.6=Idss(1+3/Vp)^2 and .4=Idss(1+4/Vp)^2
Idss=10              //small signal drain current(mA) by solving equations 1.6=Idss(1+3/Vp)^2 and .4=Idss(1+4/Vp)^2
                      
//Calculations
gmo=-(2*Idss)/Vp                //transconductance(mS)
gm=gmo*(sqrt(Id/Idss))     //transconductance(uS)
gm1=gmo*(sqrt(Id1/Idss))   //transconductance(uS) 

//Results
printf ("Idss and Vp are %.f mA and %.f V",Idss,Vp)
printf ("gmo is %.f mS",gmo)
printf ("gm at Id is %.f  gm at Id1 is %.f uS",gm/1E-3,gm1/1E-3)
