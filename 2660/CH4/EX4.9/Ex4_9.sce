clc
Tc = 10 // time taken to check hole in secs
F = 2 // frequency of checking dimension
tc = Tc*F // time taken to check one piece in secs
N = 200 // number of pieces
Tc = tc*(N + 1) // Total time in sec
printf("\n Total time taken to check dimensions = %d min" , Tc/60)
