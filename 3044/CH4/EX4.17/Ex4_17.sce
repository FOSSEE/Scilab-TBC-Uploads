//Variable Declaration
// as we know K = (x-Mean)/std_dev,       P(|x-Mean| < K*std_dev) >= 1-(1/(K*K))

K1 = (28-18)/2.5               // Corresponding to 28 customers
K2 = (18-8)/2.5                // Corresponding to 8 customers

//Calculation
// P( 8 < X < 28) >= 1-(1/(K*K))   
K = 4      // K=K1=K2
P = 1-(1.0 / (K*K))            // Required probability

//Results
printf ( " Probability of number of customers greater than 8 but less than 28 is greater than or equal to : %.4f or 15/16",P)
