//Sample Problem 43-2
txt = mopen('Example43_2_result.txt','wt')
mfprintf(txt, '**Sample Problem 43-2**\n')
A = 1  //say for the purpose of calculation
Mp = 1.67*10^-27
Mass = A*Mp
Rnot = 1.2*10^-15
r = Rnot*A^(1/3)
Volume = 4/3*%pi*r^3
density = Mass/Volume
mfprintf(txt, 'The density of nucleus is %eKg/m^3', density)
mclose(txt)