

//Variable declaration
I=10    //Ge diode carries current(mA)
V=0.2   //forward bias voltage(V)

//Calculation
//Part a
Is=I/(exp(40*V)-1)      //reverse current(mA)

//part b
I1=1*10**3 
V1=(log(1/3.355*10**3 + 1))/40      //voltage(V)
I2=100*10**-3                      //current(mA) 
V2=(log(100/3.355*10**3+1))/40     //voltage(V) 

//Part c
Is1=4*Is                 //reverse saturation current doubles for every 10 degree celcius temp rise,so for 20 degree rise it will be 4 timese/   
x=37.44                  //let x=e/kT
I3=Is1*(exp(x*V)) //current when temp doubles(mA)

//Results
printf ("the reverse current is %.3f mA",Is/1e-3)  //incorrect units given in the textbook
printf ("bias voltages are %.3f V and %.3f V resp",V1,V2)
printf ("Is at 20 degree is %.2f uA and diode current at 0.2 V is %.2f mA",Is1/1e-3,I3)
