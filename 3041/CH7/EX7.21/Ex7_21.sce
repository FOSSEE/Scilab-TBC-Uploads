//Variable declaration
R=250            //resistance(k ohms)

//Calculations
//part a
R1=-R/(-5)    //as vo=-5va+3vb(given),so when vb=0,vo/voa=-250/R1=-5

//part b
R2=R1/(2-1)   //as va=0
              //vx=(R1/R1+R)*vob=(1/6)*vb
              //vy=(R2/R1+R2)*vb
              //vx=vy
              //(1/6)*vob=(R2/R1+R2)*vb
              //vob=3vb
              //(1/6)*3=R2/(50+R2)
                
//Result
printf ("R1 and R2 are %.1f K ohms and %.1f K ohms",R1,R2)
