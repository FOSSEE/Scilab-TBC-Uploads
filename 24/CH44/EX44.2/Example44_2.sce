//Given that
c = 3*10^8  //in m/s
e = 1.6*10^-19
conv = 3600*24  //day to sec conversion
Pgen = 3400*10^6  //in W
Pused = 1100*10^6  //in W
fuel = 8.60*10^4  //in kg
Q = 200*10^6*e  //in J
Uinitial = 8.6*10^4  //in kg
M_u = 3.90*10^-25   //in kg/atom
N = 5.70*10^4
p = 3/100

txt = mopen('Example44_2_result.txt','wt')
//Sample Problem 44-2a
mfprintf(txt, '**Sample Problem 44-2a**\n')
eff = Pused/Pgen*100
mfprintf(txt, 'The efficiency of the power plant is %d\%\n', eff)

//Sample Problem 44-2b
mfprintf(txt, '\n**Sample Problem 44-2b**\n')
R = Pgen/Q
mfprintf(txt, 'The fissions in the reactor per second is %e\n', R)

//Sample Proble 44-2c
mfprintf(txt, '\n**Sample Problem 44-2c**\n')
RateDay = (1+0.25)*R*M_u*conv
mfprintf(txt, 'The uranium use in a day is equal to %fkg/day\n', RateDay)

//Sample Problem 44-2d
mfprintf(txt, '\n**Sample Problem 44-2d**\n')
T = fuel*p/RateDay
mfprintf(txt, 'The U will long for %ddays\n', T)

//Sample Problem 44-2e
mfprintf(txt, '\n**Sample Problem 44-2e**\n')
MassConvRate = Pgen/c^2
mfprintf(txt, 'The mass conversion rate is %ekg/s', MassConvRate)
mclose(txt)