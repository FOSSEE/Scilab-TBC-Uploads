//Variable declaration
A=.0025                     //voltage gain
Vi=8                        //input voltage(V)
R2=1.5                      //resistance 2(k ohms)
R1=1                        //resistance 1(k ohms)
Vl=5                        //load voltage(V)

//Calculations
beta=R2/(R1+R2)               //current gain
Vo=Vl/(1-beta)                //output voltage(V)
Vo1=(A*Vi)/(1+(A*beta)-beta)  //output voltage ripple if Vi=8Vp-p

//Results
printf ("Vo is %.1f V",Vo)
printf ("expression of output voltage ripple %.2f Vp-p",Vo1)
