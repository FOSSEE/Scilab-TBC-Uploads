//Variable declaration
Vb=3                     //voltage at A and B 
Va=Vb
R1=40*10**3.                //input resistance(ohms)
t=50*10**-3                 //time after switch is open(mS)
V1=5                        //input voltage(V)

//Calculations
//Part a
vo=-3                       //as Va=Vb=3

//Part b
i1=(V1-Vb)/R1               //input current(A)
vo1=(-250*50*10**-3)- Vb             //vo at 50 mS

//Result
printf ("output voltage %1f V",vo1)

// Note : Answer in book is wrong.
