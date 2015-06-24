//Given that
E = 0.10  //in ev
T = 800  //in K
k = 8.62*10^-5  //Boltzman constant

//Sample Problem 42-4a
txt = mopen('Example42_4_result.txt','wt')
mfprintf(txt, '**Sample Problem 42-4a**\n')
expo = E/(k*T)
P = 1/(%e^expo + 1)
mfprintf(txt, 'The probability of occupying the given energy state is equal to %f\n', P)

//Sample Problem 42-4b
Pbelow = 1/(1 + %e^-expo)
mfprintf(txt, '\n**Sample Problem 42-4**\n')
mfprintf(txt, 'The probability of occupying the given energy state is equal to %f', Pbelow)
mclose(txt)