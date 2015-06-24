//clc()
NA = 100;//mol ( basi - 100 mol A in the fresh feed )
Pconv = 95;//%
NApro = NA * (100 - Pconv)/100;
//A = 2B + C 
NB = NA * Pconv * 2 / 100;
NC = NA * Pconv/100;
PAent = 0.5;//%
NAent = NApro * 100 / PAent;
PBrec = 1;//%
NBent = NB * 100 / (100 - PBrec);
m = (NAent - NApro + NA);
conv = ((NAent - NApro + NA) - NAent)*100/(NAent - NApro + NA);
disp("%",conv,"(a)single pass converion = ")
Nrecycled = (NAent - NApro) + (NBent - NB);
R = Nrecycled/NA;
disp(R,"(b)recycle ratio = ")