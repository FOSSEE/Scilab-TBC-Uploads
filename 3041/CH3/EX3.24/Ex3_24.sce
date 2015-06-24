//Finding resistance

//Variable declaration
Rd=4                 //drain resistance(ohms)
Rs=2.5               //ource resistance(ohms)      
R1=200*10**3         //resistance(ohms)
R2=100*10**3         //resistance(ohms)
gm=2.5               //transconductance(mS)
rd=60                //internal drain resistance(ohms)

//Calculations
//Part b
Ro=Rs/(1+(((1+gm*rd)*Rs)/(rd+Rd)))   //output resistance(ohms)

//Part c
Rd1=0                              //drain resistance
Ro1=Rs/(1+(((1+gm*rd)*Rs)/rd))     //output resistance(ohms)

//Results
printf ("value of Ro is %.f ohms",Ro/1E-3)
printf ("value of Ro1 is %.f ohms",Ro1/1E-3)
