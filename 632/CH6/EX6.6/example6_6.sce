//clc()
Pswater1 = 6.08;//kPa 
T1 = 313;//K
//lnPs = 16.26205 - 3799.887/(T - 46.854)
Tb1 =3799.887/(16.26205 - log(Pswater1)) + 46.854;
disp("K",Tb1,"boiling point of water at 6.08kPa vapour pressure = ")
Pswater2 = 39.33;//kPa
T2 = 353;//K
Tb2 =3799.887/(16.26205 - log(Pswater2)) + 46.854;
disp("K",Tb2,"boiling point of water at 39.33 kPa vapour pressure = ")
Tb = [Tb1 Tb2];
T = [T1 T2];
plot(T,Tb);
xtitle('Equal pressure reference plot for sulphuric acid','Boiling point of solution,K','Boiling point of water, K');
T3 = 333;//K
//corresponding to T3 on x axis, on y we get
Tb3 = 329;//K
Pswater3 = exp(16.26205 - 3799.887/(Tb3 - 46.854));
disp("kPa",Pswater3,"Vapour pressure of solution at 333K")
