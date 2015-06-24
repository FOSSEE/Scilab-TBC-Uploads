//Section-1,Example-3,Page no.-AC.163
//To find the weight of air actually supplied per m^3 of the gas.
clc;
M_w=28.94
V=300*(100/21)*(150/100)  //Volume of air reqd. for 1m^3 of gas using 50% excess air(L)
W=V*(1/22.4)*M_w
disp(W,'weight of air actually supplied per m^3 of the gas.(gm)')
