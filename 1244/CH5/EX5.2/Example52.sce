

// Display mode
mode(0);

// Display warning for floating point exception
ieee(1);

clc;
disp("Principles of Heat Transfer, 7th Ed. Frank Kreith et. al Chapter - 5 Example # 5.2 ");

//''Surface temp in degree C''
TsC = 130;
//''Body temp in degree K''
Ts = TsC+273;
//''Ambient temp in degree C''
TinfinityC = 20;
//''Ambient temp in degree K''
Tinfinity = TinfinityC+273;
//''Film temperature = (Surface Temperature + Ambient Temperature)/2''
//''Film temp in degree K''
Tf = (Ts+Tinfinity)/2;
//''Height of plate in cms''
L = 15;
//''Width of plate in cms''
b = 10;
//''Value of Grashof number at this film temp is given by
//65(L^3)(Ts-Tinfinity)''
//Grashof number
Gr = (65*(L^3))*(Ts-Tinfinity);
//''Since the grashof number is less than 10^9, therefore flow is laminar''
//''For air at film temp = 75C (348K), Prandtl number is''
Pr = 0.71;
//''And the product Gr*Pr is''
//Prodect of Gr and Pr
GrPr = Gr*Pr;
//''From Fig 5.5 on page 305, at this value of GrPr, Nusselt number is''
Nu = 35.7;
//''Value of thermal conductivity at this film temp in W/m-K''
k = 0.029;

//''Using Nu = hc*L/k, we get ''
//Heat transfer coefficient for convection in W/m2-K
hc = (Nu*k)/(L/100);

//''Heat transfer coefficient for radiation, hr in W/m2-K''
hr = 8.5;

//''Total area in m2 is given by 2*(b/100)*(L/100)''
A = (2*(b/100))*(L/100);


disp("Therefore total heat transfer in W is given by A*(hc+hr)*(Ts-Tinfinity)")
//total heat transfer in W
q = (A*(hc+hr))*(Ts-Tinfinity)

//''For plate to be 450cm in height, Rayleigh number becomes 4.62*10^11''
//''which implies that the flow is turbulent''
//''From Fig 5.5 on page 305, at this value of GrPr, Nusselt number is  973''
//''Using Nu = hc*d/k, we get in W/m2-K, hc_bar=6.3''
//''New Total area in m2, A_bar=2*(0.1)*(4.5)''

disp("Therefore in new case, total heat transfer in W is given by A_bar*(hc_bar+hr)*(Ts-Tinfinity)")
disp("we get q=1465W")


disp(" Discussion - For same temperature difference: ")
disp(" Heat transfer will be more, if area exposed for convection and radiation is more")
