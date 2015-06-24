//Variable declaration:
T1 = 25                      //Temperature of H2SO4 ( C)
m = 50+200                   //Mass of H2SO4 (lb)
//From figure 18.2:
W1 = 50+100                  //Weight of H2SO4 (lb)
W2 = 100                     //Weight of H2O (lb)

//Calculation:
m = W1/(W1+W2)*100          //Percent weight of H2SO4 (%)
m2 = W1+W2                  //Mass of mixture (lb)
//From fgure 18.2:
T2 = 140                    //Final temperature between the 50% solution and pure H2SO4 at  25 C ( F)
h1 = -86                    //Specific heat capacity of H2O (Btu/lb)
h2 = -121.5                 //Specific heat capacity of H2SO4 (Btu/lb)
Q = m2*(h2-h1)              //Heat transferred (Btu)

//Result:
printf("The final temperature between the 50%% solution and pure H2SO4 at  25 C is : %.0f F .",T2)
printf("The heat transferred is : %.0f Btu .",Q)
