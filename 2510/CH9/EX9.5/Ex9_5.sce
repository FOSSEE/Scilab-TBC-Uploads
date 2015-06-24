//Variable declaration:
h = 24.0                    //Plant operating hour per day (h/day)
d = 350.0                   //Plant operating day per year (day/yr)

//Calculation:
N = h*d                     //Operating hours per year (h/yr)
//From example 9.1:
Q = 8545.0                  //Rate of energy loss (Btu/h)
Qy = Q*N                    //Steady-state energy loss yearly (Btu/yr)

//Result:
printf("The yearly steady-state energy loss is : %.2f  x 10^7 Btu/yr.",Qy/10**7)
