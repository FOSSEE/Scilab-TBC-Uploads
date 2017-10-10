clc
//

//Variable declaration
tU=40                                     //ultimate tensile stress
sU=60                                     //ultimate shearing stress
FS=3                                      //Mimnimum factor of safety
dA=(7/16)                                 //Diameter of bolt at A(in)
dB=3/8                                    //Diameter of bolt at B(in) 
dD=3/8                                    //Diameter of bolt at D(in)
dC=1/2                                    //Diameter of bolt at C(in)


//Calculation
Sall=(sU/FS)                              //Total tensile stress(kips)
B=Sall*((1/4)*(22/7)*(((7/16)**2)))     //Allowable force in the control rod(kips)
C1=1.75*(B)                               //Control Rod(kips)
tall=(tU/FS)                              //Total shearing stress
B=2*(tall*(1/4)*(22/7)*(3/8)*(3/8))       //Allowable magnitude of the force B exerted on the bolt
C2=1.75*B                                 //Bolt at B(kips)                       
D=B                                       //Bolt at D. Since this bolt is the same as bolt B, the allowable force is same(kips) 
C3=2.33*D                                 //Bolt at D(kips)
C4=2*(tall*(1/4)*(22/7)*(1/2)*(1/2))      //Bolt at C(kips)      


//Result
printf("\n Case(a): Control Rod  = % f kips' ,C1)
printf("\n Case(b): Bolt at B = % f kips' ,C2)
printf("\n Case(c): Bolt at D = % f kips' ,C3)
printf("\n Case(d): Bolt at C = % f kips' ,C4)
