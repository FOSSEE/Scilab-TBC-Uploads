//Variable declaration
Ro=50*10**3                 //output resistance(ohms)
Rd=10*10**3                 //drain resistance(ohms)
R1=800*10**3                //resistance(ohms)
R2=200*10**3                //resistance(ohms)
gm=5500*10**-6              //transconduuctance(us)

//Calculations
r=(Rd*Ro)/(Rd+Ro)            //Rd||Ro
R=R1+R2                      //combined resistance of R1 and R2
Rl=(R*r)/(R+r)               //load resistance(ohms)
A=-gm*Rl                     //voltage gain without feedback
beta=R2/(R1+R2)              //current gain 
Af=A/(1+A*beta)              //voltage gain with feedback

//Results
printf ("Amplifier gain with feedback is %.1f and without feedback is %.1f",Af/1E+1,A)
