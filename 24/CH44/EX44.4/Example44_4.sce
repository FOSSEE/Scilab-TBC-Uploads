//Given that
R = 10^-15  //in meter
e = 1.6*10^-19  //in coloumb
q1 = e
k = 9*10^9  //in SI unit
B = 1.38*10^-23  //in J/K

txt = mopen('Example44_4_result.txt','wt')
//Sample Problem 44-4a
mfprintf(txt, '**Sample Problem 44-4a**\n')
K = k*q1^2/(2*R)/2
mfprintf(txt, 'The initial kinetic energy is equal to %dKev\n', K/e/10^3)

//Sample Problem 44-4b
mfprintf(txt, '\n**Sample Problem 44-4b**\n')
T = 2*K/(3*B)  //B is Boltzman constant
mfprintf(txt, 'The temprature required to achieve that energy equal to %eK', T)
mclose(txt)