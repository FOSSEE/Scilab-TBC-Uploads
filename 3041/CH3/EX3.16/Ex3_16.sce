 

//Variable declaration
Idss=10              //drain current for zero bias(mA)
Vp=-4                //peak voltage(V)
Idq=2.5           //quienscent drain current(mA)
Id=Idq
Vdd=24               //voltage drain drain(V)
Vgg=4                //gate voltage(V)
R1=22                //resistance(Mohms)

//Calculations
//Part a
Vgs=Vp*(1-(sqrt(Id/Idss)))         //solving Id=Idss(1-Vgs/Vp)^2
Rs=(Vgg-Vgs)/Id                         //as Vgg-Vgs-IdRs=0 ,Id=Is 
Rd=2.5*Rs                               //given
R2=(Vgg*R1)/(R1-Vgg)                    //from Vgg=(R1*R2)/(R1+R2)

//Part b
gmo=-(2*Idss)/Vp                       //transconductance(mS)
gm=gmo*(sqrt(Id/Idss))            //transconductance(mS)

//Part c
Av=-gm*Rd                              //voltage gain

//Results
printf ("values of Rs : %.1f Kohms, Rd : %.1f k ohms and R2 is %.1f M ohms",Rs,Rd,R2)
printf ("value of gm is %.1f mS and gmo is %.1f mS",gm,gmo)
printf ("voltage amplification is %.1f",Av)
