//clc()
m = 1;//kg ( mass of completely dry wood )
P1 = 40;//% ( percentage moisture in wet wood )
P2 = 5;//% ( Percentage moisture in dry wood )
mwaterin = P1 * m / ( 100 - P1 );
mwaterout = P2 * m / ( 100 - P2 );
mevaporated = mwaterin - mwaterout;
disp("kg",mevaporated,"mass of water evaporated per kg of dry wood = ")