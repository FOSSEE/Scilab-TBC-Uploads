////
//Variable Declaration
D = 1.0e-5                 //Diffusion coefficient, m2/s 
t1 = 1000                  //Time, s
t10 = 10000                //Time, s

//Calculations
xrms1 = sqrt(2*D*t1)
xrms10 = sqrt(2*D*t10)

//Results
printf("\n rms displacement at %4d and %4d is  %4.3f and %4.3f m respectively",t1,t10,xrms1,xrms10)

