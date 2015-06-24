

//Variable declaration
Idss=16                           //drain current bias to zero(mA) 
Vp=-4                             //pinch off voltage(V)  
Rg=1                              //gate resistance(ohms)
Rs=2.2                            //sourse resistance(ohm)
Vdd=9                             //drain drain voltage(V)

//Calculations
//Part a
//Id=Idss*(1-(Vgs/Vp))**2
// putting value of Vgs=2.2*Id inequation of Id,we get
//Id**2-3.84Id+3.31   

syms Id
expr=solve([Id**2-3.84*Id+3.31],[Id])
disp(expr)
Id1=1.3    
Vgs=-Id1*Rs                                         //gate to source voltage(V)
gm0=-(2*Idss)/Vp                                    //transconductance(mS)
gm=gm0*(1-(Vgs/Vp))                                 //transconductance(mS)  
rm=1/gm                                             //transresistance(k ohms) 
Av=(Rs*gm)/(1+(Rs*gm))                              //voltage gain

//Part b
Zi=Rg                                               //input impedance(Mohms)
Zo=(Rs*rm)/(Rs+rm)                                  //output impedance(ohms)

//Results
printf ("voltage gain is %.3f",Av)
printf ("input and output impedences are %.f Mohms and %.1f ohms",Zi,Zo/1E-3)
