//clc()
m = 1000;//kg ( basis - pig iron produced )
//let x be the iron ore charged and y be the amount of flux added and z be the weight of slag produced
PFepg = 95;//% ( Fe% in product )
PCpg = 4;//%
PSipg = 1;//%
PFech = 85;//% (Fe% in feed )
mcoke = 1000;//kg
PCcoke = 90;//%
PSicoke = 10;//%
PSislag = 60;//%
PSiflux = 5;//%
PCaCO3fx = 90;//%
PMgCO3fx = 5;//%
PCMslag = 40;//% 
//iron balance gives,
x = PFepg * m *159.694 / ( PFech * 111.694);
//silicon balance gives,
//x*(100 - PFech)*28.086/(100*60.086)+mcoke*Psicoke*28.086/(100*60.086)+y*PSiflux*28.086/(100*60.086) = 10 + z*Psislag*28.086 / ( 100*60.086 )
//taking (CaO + MgO) balance
//y * ((PCaCO3fx)*56.88/(100*100.88)+(PMgCO3fx*40.312/(100*84.312))=z*PCMslag/100
//solving above 2 equations , we get
y = 403.31;
disp("kg",y,"the amount of flux required to produce 1000kg of pig iron = ")