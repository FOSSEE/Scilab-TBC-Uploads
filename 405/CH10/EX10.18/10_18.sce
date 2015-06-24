clear;
clc;
printf("\t\t\tExample Number 10.18\n\n\n");
// variable-properties analysis of a duct heater
// Example 10.18 (page no.-562-564)
// solution

d = 0.3;// [m] diameter of duct
Tma = 700;// [K] temperature of hot air
E = 0.6;// emissivity of outside duct surface
Tinf = 20+273;// [K] room temperature
// air properties at 700 K
rho = 0.5030;// [kg/cubic meter] density of air
mu = 3.332*10^(-5);// [kg/m s] viscosity of air
k = 0.05230;// [W/m degree celsius] heat transfer coefficient
Pr = 0.684;// prandtl no. of air
A = %pi*d^(2)/4;// [square meter] area of duct
sigma = 5.669*10^(-8);// [W/square meter K^(4)]
P = %pi*d;// [m]
Cp = 1083.5;// [J/kg degree celsius]
// this is a problem where a numerical solution must be employed.
// we choose a typical section of the duct with length dx and perimeter P as shown inn figure example 10-18A(page no.-562) and make the energy balances.
// we assume that resistance of the duct wall is negligible. 
// inside the duct the energy balance is 
// mdot_a*Cp*Tma = hi*P*dx*(Tma-Tmw)+mdot_a*Cp*Tm_po_a               (a)
// where hi is the convection heat transfer coefficient on the inside which may be calculated from(the flow is turbulent)
// Nu = hi*d/k = 0.023*Re_d^(0.8)*Pr^(0.3)                            (b)
// with the properties evaluated at the bulk temperature of air(Tma). the energy balance for the heat flow through the wall is
// qconv_i = qconv_o+qrad_o
// or, by using convection coefficients and radiation terms per unit area,
// hi*(Tma-Tmw) = hc*(Tmw-Tinf)+sigma*E*(Tmw^(4)-Tinf^(4))             (c)
// where the outside convection coefficient can be calculated from the free convection relation 
// hc = 0.27*((Tmw-Tinf)/d)^(1/4)                                      (d)
// inserting this relation in equation (c) gives
// hi*(Tma-Tmw) = 0.27*(Tmw-Tinf)^(5/4)/d^(1/4)+sigma*E*(Tmw^(4)-Tinf^(4))              (e)
// equation (a) may be solved for Tm_po_a to give
// Tm_po_a = (1-hi*P*dx/(mdot_a*Cp))_m*Tma + (hi*P*dx/(mdot_a*Cp))_m*Tmw                  (f)

// for 
x=180;
mdot_a = [0.14 0.45 0.68];// [kg/s]
for i = 1:3

v = mdot_a(i)/(A*rho);// [m/s]
Re_d = d*v*rho/mu;
hi = k*0.023*Re_d^(0.8)*Pr^(0.3)/d;// [W/square meter degree celsius]


for dx = 1:1:179
    for Tmw = 295:1:715
        Z = (hi/dx)*(Tma-Tmw)-0.27*(Tmw-Tinf)^(5/4)/d^(1/4)-sigma*E*(Tmw^(4)-Tinf^(4));
        if (Z>0 & Z<40) then
            Tmw_new = Tmw;
        end
    end
    for Tm_po_a = 275:1:715
        X = Tm_po_a-(1-(hi/dx)*P*dx/(mdot_a(i)*Cp))*Tmw_new + ((hi/dx)*P*dx/(mdot_a(i)*Cp))*Tmw_new;
        if (X>0 & X<5) then
            Tm_po_a_new = Tm_po_a;
        end
    end
    q_by_A = (hi/dx)*(Tma-Tmw_new);// [W/square meter]
    val1(dx,i) = q_by_A;
    val(dx) = dx;
    val2(dx,i) = Tmw_new;
    val3(dx,i) = Tm_po_a_new;
end
end
scf(1);
plot(val,val1(:,1),val,val1(:,2),val,val1(:,3));
legend("mdot_a=0.14","mdot_a=0.45","mdot_a=0.68");
xlabel("Duct Length x,m");
ylabel("Local Heat Flux q / A,W / m^2");
xgrid();
title("Heat Flux");

scf(2);
plot(val,val2(:,1),val,val2(:,2),val,val2(:,3));
legend("Tw=0.14","Tw=0.45","Tw=0.68");
xlabel("Duct Length x,m");
ylabel("Local Wall Temperature Tw K");
xgrid();
title("Temperature Profile");

scf(3);
plot(val,val3(:,1),val,val3(:,2),val,val3(:,3));
legend("Ta=0.14","Ta=0.45","Ta=0.68");
xlabel("Duct Length x,m");
ylabel("Local Air Temperature Ta K");
xgrid();
title("Temperature Profile");
printf("plots are shown as :");