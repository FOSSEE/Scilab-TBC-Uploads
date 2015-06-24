//Variable declaration
Rbb=8*10**3                  //base resistance(k ohms)
eta=0.7                     //efficiency
R1=0.2                      //R1(k ohms)
Rt=40*10**3                 //Rt(ohms)
Ct=0.12*10**-6              //capacitance(F)
Vv=2                        //capacitor is charged to voltage(V)
Iv=10*10**-3                //current to capacitor(A)
Ip=10*10**-3                 //peak current(A)
Vd=0.7                      //diode voltage(V)
V=12.                        //voltage(V)

//Calculations
//Part a
Rb1=eta*Rbb    //base resistance(ohms) 
Rb2=Rbb-Rb1             //base resistance(ohms)

//Part b
Vp=Vd+((Rb1+R1)*V/(Rbb+R1))    //peak voltage(V)

//Part c
Rtmin=(V-Vv)/Iv          //Rt minimum(k ohms)        
Rtmax=(V-Vp)/Ip          //Rt minimum(k ohms)  

//Part d
Rb11=.12                //resistance during discharge(ohms)
t1=Rt*Ct*1.27           //charging time(mS)
t2=(Rb11+R1)*Ct*1.52    //discharging time(uS)
T=t1+t2                 //cycle time
foscE=1/T               //oscillations frequency(Hz)
foscA=1/(Rt*Ct*1.2)     //oscillations frequency(Hz)

//Part e
vR1=(R1*V)/(R1+Rbb)             //vR1 at discharging period
vR1d=(R1*(Vp-Vd))/(R1+Rb11)      //vR1 at discharging period

//Results
printf ("Rb1 and Rb2 are %.1f k ohms and %.1f k ohms resp.",Rb1/1E+3,Rb2/1E+3)
printf ("Vp is %.1f V",Vp)
printf ("Rtmin is %.f k ohms and Rtmax is %.f k ohms,hence Rt is in the range",Rtmin/1E+3,Rtmax/1E+1)
printf ("foscE is %.f Hz and foscA is %.f Hz",foscE,foscA)
printf ("vR1 is %.3f and vRd1 is %.2f V ",vR1/1E-3,vR1d)
printf("(range of Rt is wrong in the book)")
