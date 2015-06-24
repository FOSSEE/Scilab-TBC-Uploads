//Variable declaration

//Calculation



l = [ 0 0.05 ; 1 0.20; 2 0.45 ; 3 0.20;  4 0.10]
x = l(:,1)
f = l(:,2)

U = sum(x.*f)                // Mean of distribution
U2 = sum(x.*x.*f)             // Second moment about origin
Variance = U2 - (U)*(U)     // Variance of given probability distribution

//Results
printf ( "Mean of given probability distribution: %.1f",U)
printf ( "Variance of given probability distribution: %.2f",Variance)
