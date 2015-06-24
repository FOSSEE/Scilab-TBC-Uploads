clear;
clc;
funcprot(0);

//Example - 15.11
//Page number - 528
printf("Example - 15.11 and Page number - 528\n\n");

//Given
P = 12.25*101325*10^(-3);//[kPa]
z_1 = 0.8;
z_2 = 1 - z_1;
V = 0.4;
// log(P_1_sat) = 13.7713 - 2892.47/(T + 248.82)
// log(P_2_sat) = 13.7224 - 2151.63/(T + 236.91)

// P_1_sat = exp(13.7713 - 21892.47/(T + 248.82));
// P_2_sat = exp(13.7224 - 2151.63/(T + 236.91));

// Let the total mixture be 1 mol
// We have to assume a temperature such that,
// y_1 + y_2 = (K_1*z_1)/(1-V-K_1*V) + (K_2*z_2)/(1-V-K_2*V) = 1

// To assume a temperature we have to determine the BPT and DPT and take a temperature in between the range BPT to DPT

// At the bubble point the whole feed lies in the liquid phase and an infinitesimal amount of vapour is formed, therefore
x_1 = z_1;
x_2 = z_2;

// The bubble point pressure is given by
// P = x_1*(exp(13.7713 - 21892.47/(T + 248.82))) + x_2*(exp(13.7224 - 2151.63/(T + 236.91)));

deff('[y]=f(T)','y=x_1*(exp(13.7713 - 1892.47/(T + 248.82))) + x_2*(exp(13.7224 - 2151.63/(T + 236.91))) - P');
T_1 = fsolve(0.1,f);
BPT = T_1;

// At the dew point the whole feed lies in the vapour phase and a drop of liquid is formed, therefore
y_1 = z_1;
y_2 = z_2;

// The dew point equation is given by
// 1/P = y_1/P_1_sat + y_2/P_2_sat
deff('[y]=f1(T)','y=1/(y_1/(exp(13.7713 - 1892.47/(T + 248.82))) + y_2/(exp(13.7224 - 2151.63/(T + 236.91)))) - P');
T_2 = fsolve(0.1,f1);
DPT = T_2;

// Now the assumed temperature should be in the range of BPT and DPT
// Let the assumed temperature be 47 C
T = 47;//[C]
error = 10;
while(error>0.001)
    P_1_sat = exp(13.7713 - 1892.47/(T + 248.82));
    P_2_sat = exp(13.7224 - 2151.63/(T + 236.91));
    K_1 = P_1_sat/P;
    K_2 = P_2_sat/P;
    y1 = (K_1*z_1)/(1-V+K_1*V);
    y2 = (K_2*z_2)/(1-V+K_2*V);
    y = y1 + y2;
    error=abs(y - 1);
    T = T - 0.0001;
end

printf(" The temperature when 40 mol %% of mixture is in the vapour is %f C",T);




