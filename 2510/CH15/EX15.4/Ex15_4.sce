//Variable declaration:
m = 14.6                         //Flow rate of water inside the tube (lb/min)
Cp = 1                           //Heat capacity of water (Btu/lb..)
t2 = 79                          //Initial temperature of water (.)
t1 = 63                          //Final temperature of water (.)
//From example 15.3:
Q1 = 56760                       //Old heat transfer rate (Btu/h)

//Calculation:
Q2 = m*Cp*(t2-t1)                //New heat transfer rate (Btu/min)

//Result:
printf("The new heat transfer rate is : %.0f Btu/min.",Q2)
printf("Or, the new heat transfer rate is : %.0f Btu/h.",Q2*60)
if (Q1==Q2) then
    printf("This result agree with the Qu02d9 provided in the problem statement. Shakespeare is wrong, nothing is rotten there.")
else 
    printf("This result does not agree with the Qu02d9 provided in the problem statement. Shakespeare is right, something is indeed rotten.")
end
