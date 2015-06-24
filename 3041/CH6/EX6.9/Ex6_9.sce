//Variable declaration
A=500                      //voltage gain
beta=1/20.                 //current gain
Ro=50*10**3                //output resistance(ohms) 
Ri=1.5*10**3               //input resistance(ohms)

//Calculations
//Part a
Af=A/(1+A*beta)            //voltage gain with feedback   

//Part b
Rif=Ri*(1+(A*beta))         //input resistance(k ohms)
Rof=Ro/(1+A*beta)           //output resistance(k ohms)

//Results
printf ("Amplifier gain is %.2f",Af)
printf ("input resistance is %.f K ohms and output resistance is %.2f kW",Rif/1E+3,Rof/1E+3)
