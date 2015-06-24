

//Variable declaration
gm = 2                   //transconductance
rd = 200*10^3           //dynamic drain resistance(ohms)
Cgs = 10                 //gate to source capacitance(pF)
Cgd = 0                  //gate to drain capacitance(pF)
Rs = 1*10^3             //source resistance(ohms)
Rg = 1*10^6             //Rg = R1||R2
Rd = 5*10^3             //drain resistance(ohms) 
Rs1 = 2                  //resistance(k ohms) 
Cc1 =  0.1*10^-6     //coupling capacitors(F)
Cc2 = Cc1
Co = 10*10^-12          //output capacitance(F)
Vgs = 1                  //gate to source voltage(V)

//Calculations
//Part a
R = (Rd*rd)/(Rd+rd)     //Rd||rd(k ohms)
Avo =  -Vgs*gm*R      //voltage gain
Vo = Avo

//Part b
w11 = 1/(Cc1*(Rs*Rg))           //corner freq(rad/s)
wL = w11                        //input circuit corner freq(rad/s)

//Part c
w22 = 10^12/((Cgs*R)*10^3)     //output circuit corner frequency(rad/s)
wH = w22/(2*%pi)                          

//Part d
G = -Avo*wH                         //gain bandwidth product

//Part e
Rd = 4*10^3                      //drain resistance reduced(ohms) 
Rnew = (Rd*rd)/(Rd+rd)            //new resistance(ohms)
Avo1 = -Vgs*gm*Rnew               //new voltage gain
BWnew = (10^8/Rnew)/(2*%pi)                //new bandwidth(Mrad/s)
Gnew = -Avo1*BWnew                 //gain bandwidth product new

//Results
printf ("a)Avo is %.2f",Avo/1E+3)
printf ("b)wL is %.2f rad/s",wL/1E-3)
printf ("c)wH is %.1f MHz",wH/1E+3)
printf ("d)G is %.2f MHz",G/1E+6)
printf ("e)Gnew is %.1f MHz",Gnew/1E+6)
