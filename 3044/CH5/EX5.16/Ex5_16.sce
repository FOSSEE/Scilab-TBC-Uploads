// Variable declaration
alpha = 0.1                                                                                          // Mean of normal distribution
beta = 0.5

// Calculation
Mean = (0.1^(-1.0/0.5))* gamma(int(1+1/0.5))                                                  // Mean life
Mean = round(Mean)

function ans = f1(x)
    ans =  0.1*0.5*(x^-0.5)*%e^(-0.1*(x^0.5))
endfunction

result = intg(300, 8000,f1)     // probability of battery life > 300 hours

// Result
printf ( "Mean lifetime: %d hours",Mean)
printf ( "probability of battery life > 300 hours: %.3f",result)
