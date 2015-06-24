							//Variable declaration:
//From steam tables:
h1 = 1572                           //Enthalpy for super heated steam at (P = 40 atm, T = 1000 F) (Btu/lb)
h2 = 1316                           //Enthalpy for super heated steam at (P = 20 atm, T = 600 F) (Btu/lb)
h3 = 1151                           //Enthalpy for saturated steam (Btu/lb)
h4 = 28.1                           //Enthalpy for saturated water (Btu/lb)
m1 = 1000                           //Mass flowrate of  steam (lb/h)
syms m                              //Mass flow rate of steam (lb/h)

//Calculation:
Dh1 = m1*(h3-h4)                    //The change in enthalpy for the vaporization of the water stream (Btu/h)
Dh2 = m*(h1-h2)                     //The change in enthalpy for the cooling of the water stream (Btu/h)
x = eval(solve(Dh1-Dh2,m))                //Mass flowrate of steam (lb/h)
m2 = x;                          //Mass flowrate of steam (lb/h)

//Result:
disp("The mass flowrate of the utility steam required is : ")
disp(m2)
disp(" lb/h.")
				
