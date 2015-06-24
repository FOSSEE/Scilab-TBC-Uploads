//Given that
Nn = 70
Np = 50
A = Nn+Np

//Sample Problem 43-3
txt = mopen('Example43_3_result.txt','wt')
mfprintf(txt, '**Sample Problem 43-3**\n')
Msn = 119.902199  //in Atomic mass unit
uCsqure = 931.5  //in Mev
Mp = 1.007825  //in Atomic mass unit
Mn = 1.008625  //in Atomic mass unit
deltaE = (Np*Mp + Nn*Mn - Msn)*uCsqure/A
mfprintf(txt, 'The binding energy per nucleon of Sn is %fMev/nucleon', deltaE)
mclose(txt)