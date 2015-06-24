//Variable Declaration
a = [ 0 0.18; 1 0.5 ; 2 0.29;  3 0.03]
U = 0

//Calculation



for i = 1:4
    U = U + a(i,1)*a(i,2)
end    
//Results
printf ( "Mean of the probability distribution: %.2f",U)
