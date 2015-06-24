

//Variable declaration
Cpi = 20*10^-9           //opening capacitor(F)
Cu = 5*10^-9  
C = 50*10^-9             //here C = Cl+Cw
rpi = 3.75*10^3          //dynamic drain resistance(ohms)
r1 = 4*10^3              //resistance(ohms)
r2 = 42*10^3             //resistance(ohms)
r3 = 303*10^3            //resistance(ohms)
f = 20                    //frequency(Hz)
beta = 100               //common emitter current gain
Rl = 10*10^3             //load resistance(ohms)

//Calculations
//Part a
Req = (((r1*r2)/(r1+r2)+rpi)*r3)/(((r1*r2)/(r1+r2)+rpi)+r3)    //equivalent resistance(ohms)
Ce = (beta+1)/(2*(%pi)*f*Req)                             //emitter capacitance(uF)

//Part b
gm = beta/rpi                   //transconductance
Ro = (Rl*r1)/(r1+Rl)             //output resistance(k ohms)
Ceq = Cpi+(Cu*(1+gm*Ro))         //equivalent capacitance(pF)
Co = C+(Cu*(1+(1/(gm*Ro))))      //output capacitance(pF)
r = (rpi*r1)/(rpi+r1)            //rpi||r1
w21 = 1/(Ceq*r)                  //lower cutoff frequency(MHz)
w22 = 1/(Co*Ro)                  //higher cutoff frequenct(MHz)

//Part c
gm = 79.2
Ro = 0.75
Ceqnew = 20+(5*(1+((gm*Ro))))           //as gain is reduced to 75% of original value
wHnew = (10^12)/(Ceqnew*r)/10**6                    //corner value of high frequency(Mrad/s)  
fHnew = wHnew/(2*(%pi))                    //new value of higher frequency cutoff(KHz)

//Results
printf ("a)value of bypass capacitor Ce is %.f uF",Ce/1E-6)
if w21>w22 then
       printf ("higher frequency is w21")
else
    printf ("higher frequency is w22")
end    

printf ("b)high frequency cut-off is %.2f Mrad/s",w22/1E+3)
printf ("c)high frequency cut-off is %.3f MHz",fHnew)
