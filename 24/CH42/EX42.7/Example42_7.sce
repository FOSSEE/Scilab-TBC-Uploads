//Given that
Egap = 1.9  //in eV

//Sample Problem 42-7
pt = mopen('Example42_7_result.txt', 'wt')
mfprintf(pt, '**Sample Problem 42-7**\n')
lambada = 1242/Egap
mfprintf(pt, 'The wavelength emitted is equal to %dnm', lambada)
mclose(pt)