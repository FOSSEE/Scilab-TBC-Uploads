//Variable declaration
Vd=0.7                      //diode voltage(V)
Ro=18                       //output resistance(k ohms)
R1=2                        //diode1 resistance(k ohms)
R2=2                        //diode2 resistance(k ohms) 

//Calculations
//Part a
V1=10                       //voltage to D1(V)
V2=0                        //voltage to D2(V)
Io=(V1-Vd)/(R1+Ro)          //output current(mA)   
Vo=Io*Ro                    //output voltage(V)

//Part b
V1=5                        //voltage to D1(V)
V2=0                        //voltage to D2(V)
Io=(V1-Vd)/(R1+Ro)          //output current(mA)   
Vo1=Io*Ro                   //output voltage(V)

//Part c
V1=10                      //voltage to D1(V)
V2=5                       //voltage to D2(V)
Vo=8.37                    //as D1 only conducts,so,Vo is same as in part a
Vd1=V2-Vo                  //assume D1 conducts
Vo2=8.37                   //D2 does not conduct as as Vd1 is negative

//Part d
V1=5 ; V2=5                  //voltage to D1 and D2(V) 
Id1=(V1-Vd-Vo)/2         //diode1 current(mA)   
Io=Vo/Ro                 //output current(mA)   
Vo3=(Ro*(V1-Vd))/(Ro+1)  //output voltage(V)

printf ("a)output voltage is %.2f V",Vo)
printf ("b)output voltage is %.2f V",Vo1)
printf ("c)output voltage is %.2f V",Vo2)
printf ("d)output voltage is %.2f V",Vo3)
