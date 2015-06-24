//Variable declaration
gm=1600             //gm(us)
rd=50               //resistance(kohms)
Rl=5                //load resistance(kohms)

//Calculations
Av=-gm*Rl           //Vgs=Vs from circuit model
                    //Vo=-(gm*Vgs)*Rl
                    //as Av=Vo/Vs=-gm*Rl     

//Result
printf ("voltage gain of the circuit is %.f",Av/1E+3)
