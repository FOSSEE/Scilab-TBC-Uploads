//Given that
E = 7.0  //in ev
density = 2*10^28  //density of states 
V = 2*10^-9  //in m^3

//Sample Problem 42-5
txt = mopen('Example42_5_result.txt', 'wt')
mfprintf(txt, '**Sample Problem 42-5**\n')
P = 0.50
No = density * P * V
mfprintf(txt, 'Number of occupied states per eV at 7 ev is equal to %e', No)
mclose(txt)