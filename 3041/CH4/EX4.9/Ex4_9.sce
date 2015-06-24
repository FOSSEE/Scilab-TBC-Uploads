

//Variable declaration
beta = 50.              //common emitter current gain 
R1 = 11.5              //resistance(k ohms)
R2 = 41.4              //resistance(k ohms)  
Vcc = 10.               //supply voltage to collector(V)
Rc = 5.                 //collector resistance(k ohms)
Re = 1.                 //emitter resistance(k ohms)
Rs = 1.                 //source resistance(k ohms)
Vbe = 0.7              //base emitter voltage(V)
Rl = 10.                //load resistance(k ohms)
Cc1 =  20*10^-6.    //coupling capacitors(uF)
Cc2 = Cc1
Ce = 150*10^-6.        //emitter capacitor(uF)  
Cpi = 100       
Cu = 5.

//Calculations
//Part a
Rb = (R1*R2)/(R1+R2)                 //R1||R2(k ohms)
Vbb = Vcc*(R1/(R1+R2))               //suply voltage to base(V)
Ib = (Vbb-Vbe)/(Rb+(Rs*(1+beta)))   //base current(mA)
Ic = beta*Ib                        //collector current(mA)  
Vce = Vcc-(Ic*Rc)-(Ic+Ib)*Re         //collector to emitter voltage(V) 
rpi = (25*beta)*10^-3/Ic                  //dynamic junction resistance(K ohms) 
    
//Part b
rpi = 1                              //dynamic junction resistance(K ohms)  
R = (rpi*Rb)/(rpi+Rb)                //equivalent resistance(rpi||Rb) 
Vbe = (R*Rs)/(R+Rs)                  //base to emitter voltage(V)
Ib1 = Vbe/rpi                        //base current(mA)
Ro = (Rc*Rl)/(Rc+Rl)                 //Rc||Rl(k ohms)   
Vo = -(beta*Ib1*Ro)                 //output voltage(V)
Avo = Vo                             //voltage gain

//Part c
r1 = (Rs*Rb)/(Rs+Rb)                //Rs||Rb(k ohms) 
w11 = 1/(Cc1*(Rs+R))                //low freq cutoff(rad/s)
w12 = 1/(Cc2*(Rc+Rl))               //high freq cutoff(rad/s) 
w1p = 1/((Ce/(beta+1))*(r1+rpi))   //low cutoff freq(rad/s)

//Part d
Co1 = 5                          //as Co1 = Cw+Cl
gm = beta/rpi                    //transconductance(mS)    
Ceq = Cpi+(Cu*(1+(gm*Ro)))   //equivalent capacitance(pF)
Rs1 = (Rb*Rs)/(Rb+Rs)            //Rb||Rs(k ohms)
r2 = (Rs1*rpi)/(Rs1+rpi)         //Rs1||rpi(k ohms)
w21 = 10^12/(Ceq*r2*10^3)                 //low freq cutoff(MHz) 

//Results
printf ("a)dc bias values are Vbb : %.2f V, Ib : %.4f mA, Ic : %.2f mA, Vce : %.3f V, rpi : %.f k ohms",Vbb,Ib,Ic,Vce,rpi)
printf ("mid freq gain is %.2f ",Avo)
printf ("low freq cut-off is %.f rad/s",w1p/1E+3)
printf ("high cut-off freq is %.2e rad/s",w21)
