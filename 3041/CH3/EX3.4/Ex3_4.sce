//Variable declaration
beta=100.       //current gain
rpi=2*10**3     //dynamic resistance(ohms)
rx=500          //resistance(ohms)
ro=250*10**3    //output resistance(ohms)
R1=50*10**3     //resistance(k ohms)   
R2=10*10**3     //resistance(k ohms)
Rc=5*10**3      //collector current(k ohms) 
Rl=5*10**3.     //load current(k ohms)
Rs=1*10**3      //source resistance(k ohms)

//Calculations
Rb=(R1*R2)/(R1+R2)               //equivalent resistance of R1 and R2(kohms)
r=rpi+rx                         //series resistance of rpi and rx(k ohms) 
gm=beta/rpi                      //transconductance(mS)
Vo=-gm*((Rc*Rl)/(Rc+Rl))*.526    //output voltage(V) as 
Av=Vo                            //voltage gain
Ai=Av*((Rs+((Rb*r)/(Rb+r)))/Rl)  //current gain 

//Results
printf ("source to load voltage gain is %.2f",Av)
printf ("source to load current gain is %f",Ai)
disp ("Note : Solution given in the textbook is incorrect")
