//Variable Declaration
r = 2           // defective books
n = 100         // total books
p = 0.05        // probability of a book being defective

//Calculation

function ans =  comb(n,r)
    // returns number of total combination of selecting "r" items out of "n" 
    ans = factorial(n)/(factorial(r)*factorial(n-r))
endfunction    

// using bionomial distribution
p1 = comb(100,2)*(p^2)*((1-p)^98)                         // required probability using bionomial distribution

// using poisson distribution
lamda = n*p
// we know P = ((%e^-lamda)*(lamda^r)) / fact(r)
p2 = ((%e^-lamda)*(lamda^r)) / factorial(r)                 // required probability

//Results
printf ( "using bionomial distribution: probability = %.3f",p1)
printf ( "using poisson distribution: probability = %.3f",p2)
