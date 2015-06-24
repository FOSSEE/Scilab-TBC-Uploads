

//Variable declaration
gm = 2.5*10^-3            //transconductance(mS) 
Rd = 6*10^3               //drain resistance(ohms)
rd = 200*10^3             //dynamic drain resistance(ohms)   
Cc1 = 0.12*10^-6      //coupling capacitors(uF)
Cc2 =  Cc1
Rs = 1*10^3               //source resistance(ohms)
Rg = 0.1*10^6             //R1||R2  
Cgs = 12*10^-9            //gate to source capacitor(pF) 
Cgd = 2*10^-9             //gate to drain capacitor(pF)    
Co1 = 10                   // as Co1 = Cl+Cw = 10

//Calculations
//Part a
Ro = (rd*Rd)/(rd+Rd)                  //equivalent resistance of rd and Rd(ohms)
Vo = -gm*((rd*Rd)/(rd+Rd))            //as Vgs = Vs
Avo = Vo                              //Avo = Vo/Vs = (-gm*Vs*((rd*Rd)/(rd+Rd)))/Vs = Vo  
    
//Part b
f11 = 1/(2*(%pi)*Cc1*(Rs+Rg))

//Part c
Ceq = Cgs+(Cgd*(1+gm*Ro))                    //on application of miller theorem
Co = Co1+Cgd*(1+(1/(gm*Ro)))                 //output capacitance(pF)
f21 = 1/(2*(%pi)*Ceq*((Rs*Rg)/(Rs+Rg)))  //input circuit cutoff frequency(MHz)
f22 = 1/(2*(%pi)*Co*Ro)*10^3            //output circuit cutoff frequency(MHz)
fH = f22                                     //cutoff frequency of high frequency band(MHz)

//Results
printf ("a)mid freq gain is %.1f",Avo)
printf ("b)input circuit cut-off is %.1f Hz",f11)
printf ("c)high freq input cutoff is %.2f and output cutoff is %.2f MHz",f21/1E+3,f22/1E-3)
printf ("high freq cut-off is %.2f MHz",fH/1E-3)
