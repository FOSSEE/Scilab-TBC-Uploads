//Variable declaration
Ic=100              //current at quinscent point(uA)
beta=2000.          //current gain
Ad=250              //difference mode gain
CMRR=5000           //as 74 dB=5000,common mode rejection ratio(dB)

//Calculations
rpi=(25*beta)/Ic     //dynamic internal resistance(k ohms)  
gm=beta/rpi          //transconductance(mS)
Re=CMRR/gm           //emitter resistance(k ohms)
Rc=(Ad*2)/gm         //collector resistance(k ohms) from formula Ad=gmRc/2
Rin=2*rpi            //input resistance(k ohms)

//Results
printf ("Re is %.1f k ohms",Re)
printf ("Rc is %.1f k ohms",Rc)
printf ("input resistance is %.1f k ohms",Rin)
