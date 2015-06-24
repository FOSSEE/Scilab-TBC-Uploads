clear;
clc;
printf("\t\t\tExample Number 8.19\n\n\n");
// numerical solution for combined convection and radiation(non-linear system) 
// Example 8.19 (page no.-449-452)
// solution

l = 0.5;// [m] length of plate 
b = 0.5;// [m] breadth of plate
T1 = 1300;// [K] temperature of plate 
Tinf = 300;// [K] temperature of surrounding
T4 = Tinf;// [degree celsius]
h = 50;// [W/square meter] convection heat transfer coefficient
E1 = 0.8;
E2 = 0.3;
E3 = 0.3;
// using figures 8-12(page no.-386) and 8-14(page no.-387), we can evaluate the shape factors as 
F12 = 0.2;
F13 = 0.2;
F23 = 0.2;
F32 = 0.2;
F14 = 1-0.2-0.2;
F24_L = 1;
F34_R = 1;
F21 = F12;
F31 = F12;
F24_R = 0.6;
F34_L = 0.6;
F11 = 0;
F22 = 0;
F33 = 0;
// J2R = J3L
// J2L = J3R      From symmetry
sigma = 5.669*10^(-8);// [W/square meter K^(4)]
Eb4 = sigma*T4^(4);// [W/square meter]
Eb1 = sigma*T1^(4);// [W/square meter]
J4 = Eb4;// [W/square meter]
// we now use equation(8-107) to obtain a relation for J1:
// J1 = (1-E1)*[F12*J2R+F13*J3L+F14*J4]+E1*Eb1
// but J2R = J3L and F12 = F13 so that
// J1 = (1-E1)*[2*F13*J2R+F14*J4]+E1*Eb1                                       (a)
// we use equation (8-108) for the overall energy balance on surface 2:
// 2*h*(Tinf-T2) = E2*(Eb2-J2R)/(1-E2)+E2*(Eb2-J2L)/(1-E2)
// 2*h*(Tinf-T2) = E2*(2*Eb2-J2R-J2L)/(1-E2)                                   (b)
// equation (8-105) is used for surface J2R.
// J2R = (1-E2)*(F21*J1+F23*J3L+F24_R*J4)+E2*Eb2
//  But J2R = J3L so that
// J2R = [(1-E2)*(F21*J1+F24_R*J4)+E2*Eb2]/(1-(1-E2)*F23)                       (c)
// for surface J2L the equation is 
// J2L = (1-E2)*(F24_L*J4)+E2*Eb2                                               (d)
// we now have four equations with four unknowns, J1,J2R,J2L,Eb2, with T2 = (Eb2/sigma)^(1/4).
// however equation (b) is nonlinear in Eb so we must use a special procedure to solve the set.
for T2 = 300:0.1:400
    Z = [1 -(1-E1)*2*F13 0 0;0 -E2/(1-E2) -E2/(1-E2) 2*E2/(1-E2);(1-E2)*F21/(1-(1-E2)*F23) -1 0 E2/(1-(1-E2)*F23);0 0 1 -E2];
    C = [E1*Eb1;2*h*(Tinf-T2);-F24_R/(1-(1-E2)*F23);(1-E2)*F24_L];
    S = Z^(-1)*C;
    Eb2_E = S(4);
    Eb2_T = sigma*T2^(4);
    dEb2 = Eb2_E-Eb2_T;
    if (dEb2>0 & dEb2<5) then
        J1 = S(1);// [W/square meter]
        J2R = S(2);// [W/square meter]
        J2L = S(3);// [W/square meter]
        Eb2 = S(4);// [W/square meter]
        T2new = T2;// [K]
    end
end
// the total heat flux lost by surface 1 is 
q1_by_A1 = h*(T1-Tinf)+(Eb1-J1)*E1/(1-E1);// [W/square meter]
// for a 0.5 by 0.5 m surface the heat lost is thus 
q1 = q1_by_A1*l*b;// [W]
printf("\n\n the heat lost by plate is %f W",q1);
