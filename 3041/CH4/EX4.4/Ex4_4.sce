//Variable declaration
gm = 1.                    //transconductance(mS)
rd = 40                    //dynamic drain resistance(k ohms)  
Rd1 = 40                   //JFET 1 drain resistance(k ohms) 
Rd2 = 10                   //JFET 2 drain resistance(k ohms) 

//Calculations
Avo = (-gm*((rd*Rd1)/(rd+Rd1)))*(-gm*((rd*Rd2)/(rd+Rd2)))             //voltage gain

//Results
printf ("Avo is %.1f ",Avo)
