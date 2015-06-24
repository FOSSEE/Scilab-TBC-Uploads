//Given that
Rpi = 139.6  //in Mev
Rmu = 105.7  //in Mev
c = 3*10^8  //in m/s

//Sample Problem 45-1
pt = mopen('Example45_1_result.txt', 'wt')
mfprintf(pt, '**Sample Problem 45-1**\n')
Kmu = poly(0, 'Kmu')
//CONSERVATION OF ENERGY
//Rpi + Kpi = Rmu + Kmu + Rv + Kv
//putting Rv(as mass is 0) & Kpi equal to 0
//Rpi = Rmu + Kmu + Kv
SUM = Rpi - Rmu  //sum of Kmu & Kv
Kv = SUM - Kmu
//for neutrino
Pv = Kv/c
//CONSERVATION OF LINEAR MOMENTUM
//Ppi = Pmu + Pv
//putting Ppi equal to 0
Pmu = - Pv
//for pion
P = Kmu + 2*Kmu*Rmu - (Pmu*c)^2
Kmu = roots(P)
Kmu = Kmu(2)
mfprintf(pt, 'The kinetic energy of the antimuon is %fMev\n', Kmu)
mfprintf(pt, 'The kinetic energy of the neutrino is %fMev\n', SUM - Kmu)
mclose(pt)