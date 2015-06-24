//Variable declaration
hfe=120              //current gain
r1=1.5               //resistance(k ohms)
Vi=1                 //input voltage(V) 
hoe=50*10**-3        //output conductance with input open circuited
Rs=2                 //source resistance(k ohms)
Vbe=0.7              //base to emitter voltage(V)
Vcc=10               //supply voltage(V)
r3=0.33              //resistance(k ohms)
r4=5.8               //rsistance(k ohms) 
r5=27                //rsistance(k ohms) 
hoe=50*10**-3        //output conductance with input open circuited
    
//Calculations
//Part a
Vbb=Vcc*(r4/(r4+r5))          //voltage to bae(V)
Rb=(r5*r4)/(r5+r4)            // as Vbb-Vbe=RbIb+(hfe+1)Ib*R,here hfe=beeta
ib=(Vbb-Vbe)/(Rb+(hfe+1)*r3)  //instantaneous base current(mA)
hie=(0.02/ib)*10**3           
Ib=Vi/hie                    //base current(mA)
h=hfe*Ib
Avo=-h*r1                    //voltage gain

//Part b
r=1/hoe                //resistance(k ohms)
R1=(r*r1)/(r+r1)       //resitance(k ohms)
R=(R1*Rs)/(R1+Rs)      //resistance(k ohms)
Ib1=1/(Rs+R)          //base current(mA)
h1=hfe*Ib1
Avl=-h1*R             //voltage gain

//Results
printf ("hie and Avo are %.f and %.1f",hie,Avo/1E-3)
printf ("Avl is %.2f",Avl)
