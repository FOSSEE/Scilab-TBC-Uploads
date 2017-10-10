//Section-1,Example-7,Page no.-AC.36
//To calculate number average(Mn_bar) and weight average molecular mass(Mw_bar)of polypropylene polymer 
clc;
M1=[(12*3)+(6*1)]*400 //molecular mass of (a)
M2=[(12*3)+(6*1)]*800 //molecular mass of (b)
M3=[(12*3)+(6*1)]*600 //molecular mass of (c)
n1=25
n2=35
n3=40
Mn_bar=((n1*M1)+(n2*M2)+(n3*M3))/(n1+n2+n3)
disp(Mn_bar,'number average molecular mass')
Mw_bar=((n1*M1^2)+(n2*M2^2)+(n3*M3^2))/((n1*M1)+(n2*M2)+(n3*M3))
disp(Mw_bar,'weight average molecular mass')






