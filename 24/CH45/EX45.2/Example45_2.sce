//Given that
Epi = 139.6  //in Mev
Ek = 493.7  //in Mev
Ep = 983.3  //in Mev
Es = 1189.4  //in Mev

//Sample Problem 45-2
pt = mopen('Example45_2_result.txt', 'wt')
mfprintf(pt, '**Sample Problem 45-2**\n')
Q = Epi + Ep - Ek - Es
mfprintf(pt, 'The energy of the reaction is %dMev', Q)
mclose(pt)