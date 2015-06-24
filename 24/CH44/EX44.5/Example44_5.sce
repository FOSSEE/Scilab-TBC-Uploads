//Sample Problem 44-5
txt = mopen('Example44_5_result.txt','wt')
mfprintf(txt, '**Sample Problem 44-5**\n')
MassRate = 4*1.67*10^-27/(4.20*10^-12)  //mass of proton required to produce 1 unit of energy 
Ps = 3.90*10^26  //in W
Rate = MassRate*Ps
mfprintf(txt, 'The rate at which hydrogen is consumed is %ekg/s', Rate)
mclose(txt)