//Given that
d = 200  //in kg/m^3
fac = 10^3
Na = 6.023*10^23
Mt = 3*10^-3  //in kg/mol
Md = 2*10^-3  //in kg/mol

txt = mopen('Example44_6_result.txt','wt')
//Sample Problem 44-6a
mfprintf(txt, '**Sample Problem 44-6a**\n')
n = 2*fac *d *Na /(Mt + Md)
mfprintf(txt, 'The number of particle in unit volume is %em^-3\n', n)

//Sample Problem 44-6b
mfprintf(txt, '\n**Sample Problem 44-6b**\n')
TauMin = 10^20/n
mfprintf(txt, 'The duration of time, pallet can maintain is of the order of %esec', TauMin)
mclose(txt)