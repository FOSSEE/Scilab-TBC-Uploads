//clc()
Vper1 = 70;//% ( 1 = HCl)
Vper2 = 20;//% ( 2 = Cl2)
Vper3 = 10;//% ( 3 = CCl4)
M1 = 36.45;
M2 = 70.90;
M3 = 153.8;
m1 = Vper1 * M1;
m2 = Vper2 * M2;
m3 = Vper3 * M3;
mper1 = m1 * 100/(m1+ m2 + m3);
mper2 = m2 * 100/(m1+ m2 + m3);
mper3 = m3 * 100/(m1+ m2 + m3);
disp(mper1," (a) weight percent of HCl= ")
disp(mper2,"weight percent of Cl2= ")
disp(mper3,"weight percent of CCl4= ")
m = (m1 + m2 + m3)/(Vper1 + Vper2 + Vper3);
disp("kg",m,"(b)average molecular weight = ")
v = 22.4143;//m^3/kmol
Vtotal = v * (Vper1 + Vper2 + Vper3);
D = (m1 + m2 + m3)/Vtotal;
disp("kg/m^3",D,"(c)Density at standard condiions = ")