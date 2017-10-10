clear
//Given
P=120*10**3                      //W
R=0.4                            //ohm
Ev=240.0                           //V
Ev1=24000.0                        //V

//Calculation
Iv=P/Ev
P=Iv**2*R
Iv1=P/Ev1
P1=Iv1**2*R

//Result
printf("\n (i) Power loss at 240 V is %0.3f  K W", P*10**-3)
printf("\n (ii) Power loss at 24000 V is %0.0f  W",P1)
