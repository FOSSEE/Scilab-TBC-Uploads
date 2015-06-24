clc
//initialisation of variables
Ss= 15000 //psi
Sa= 6000 //psi
Es= 30*10^6
Ea= 10*10^6
Sl= 16 //ft
ba= 3 //in
ha= 8 //in
hs= 1 //in
b= 1 //in
//CALCULATIONS
bs= (Ea/Es)*ba
Y= ((ba-b)*b*(hs/2)+(ha+b)*b*((ha/2)+(hs/2)))/(ba*b+ha*b)
I= (ba*hs^3/12)+ba*hs*(Y-(hs/2))^2+((b*ha^3/12)+b*ha*(ha-Y-(ha/2))^2)
w1= Ss*I/(Y*(1/2)*ha*(ha)*12)
Ss= Es*Sa/Ea
w2= Ss*I/((ha-Y)*(1/2)*ha*(ha)*12)
if (w1<w2)
    printf ('Greatest uniformly distributed load= %.2f lb per ft',w1)
else 
    printf ('Greatest uniformly distributed load= %.2f lb per ft',w2)
        
end
