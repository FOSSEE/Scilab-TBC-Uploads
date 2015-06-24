//clc()
m = 100;//mol ( basis reactore exit gas )
//CH3OH + O2 = HCOOH + H2O
//CH3OH + O2 / 2 = HCHO + H2O
Nn2 = 64.49;//mol
No2 = 13.88;//mol
Nh2o = 5.31;//mol
Nch3oh = 11.02;//mol
Nhcho = 4.08;//mol
Nhcooh = 1.22;//mol
//x be the moles of methanol reacted, taking C balance, we get,
x = Nch3oh + Nhcho + Nhcooh;
Pconv = Nhcho * 100 / x ;
disp("%",Pconv,"(a)Percent conversion of formaldehyde = ")
Nair = Nn2 * 100 / 79;
R = Nair / x;
disp(R,"(b)Ratio of air to methanol in the feed = ")