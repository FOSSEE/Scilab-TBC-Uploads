//Variable Declaration
n = 40000   
p = 0.5 

//Calculation
Mean = n*p
Variance = (n*p*(1-p))                // Variance of Sample
std_dev=sqrt(Variance)                     // standard deviation of sample

k_square = 1/(1-0.99)
k = sqrt(k_square)

Min_heads = Mean - k*std_dev
Max_heads = Mean + k*std_dev

p1 = Min_heads/n
p2 = Max_heads/n

//Results
printf ("Probability limit: ( %.3f , %.3f )",p1,p2)
