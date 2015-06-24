//Variable declaration
Ro=100.                 //output resistance(ohms)
vo=10.                  //output voltage(V)
A=10**5.                //gain 
Ri=100*10**3            //input resistance(ohms) 
Rs=1*10**3.             //resistance(ohms)
Rl=10*10**3             //load resistance(ohms)

//Calculations
//Part i
iL=vo/Rl                  //load current(mA)
Avi=vo+(iL*Ro)            //voltage gain without feedback
vi=Avi/A                  //voltage(V)
ii=vi/Ri                  //current(A)  
vs=vo+ii*(Rs+Ri)          //source voltage(V)

//Part ii
Avf=vo/vs                //voltage gain with feedback  


//Part iii
Rif=vs/ii              //input resistance(ohms) 
Rof=Ro/A               //output resistance(ohms)

//Results
printf ("vs is %.4f v",vs)
printf ("vo/vs that is Avf is %.f",Avf)
printf ("input and output resistances are %.2f , %.3f ohms",Rif,Rof)
