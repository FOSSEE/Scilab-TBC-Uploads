//Variable declaration
beta = 125           //common emitter current gain
rpi = 2.5            //dynamic junction resistance(k ohms)
rd = 40              //dynamic drain resistance(k ohms)   
gm = 2               //transconductance(mS) 
Vs = 1               //assume,source voltage(V)
Rs = 10              //source resistance(k ohms)
Rc = 1               //collector resistance(k ohms)
rb = 2               //resistance(k ohms)
Vgs = 1              //gate to source voltage(V)

//Calculations
//Part a
R = (rd*Rs)/(rd+Rs)      //equivalent resistance(k ohms)
Ib = gm*Vgs*(R/(rpi+R))  //base current(mA)
Vo = beta*Ib*Rc         //output voltage(V)   
Avo = Vo                 //voltage gain

//Part b
Ib1 = Vs/(rb+rpi)        //base current(mA) after interchanging stages of JFET and BJT  
Vgs1 = beta*Ib1*Rc      //gate to source voltage(V) after interchanging stages of JFET and BJT
Vo1 = gm*Vgs1*R          //output voltage(V) after interchanging stages of JFET and BJT
Avo1 = Vo1               //voltage gain after interchanging stages of JFET and BJT

//Results
printf ("Avo is %.1f ",Avo)
printf ("Avo1 when BJT and FET stages are reversed is %.f",Avo1)
