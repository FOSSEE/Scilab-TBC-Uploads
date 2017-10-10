//Variable declaration
VL=12            //load voltage(V)
I=2.             //current at 12 V
V=240            //dc source(V)
d=17/50.         //duty cycle
d1=0.6           //duty cycle
eta1=0.8         //efficiency
Vdc = 12
//Calculations
P=VL*I                        //average load power(W)
Isav=(1*d)/2                  //average supply current(A)
Pav=V*Isav                    //average supply power(W)
eta=(P/Pav)*100               //regulator efficiency
Isav1=(1*d1)/2                //average supply current(A)
Il=(eta1*V*Isav1)/Vdc         //load current(A)
Po=Il*Vdc                     //power output(W)

//Results
printf ("regulator efficiency is %.1f %%",eta)
printf ("average supply current is %.1f A",Il)
printf ("power output is %.1f W",Po)