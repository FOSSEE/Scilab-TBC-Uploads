clear;
//clc();

// Example 10.2
// Page: 262
printf("Example-8.2  Page no.-262\n\n");

//***Data***//

// The initial data for this example is same as that of example 10.2, i.e.
P = 800;//[psia] Bubble point pressure
x_e = 0.60;// Mole fraction of ethane in liquid phase
x_h = (1-x_e);// Mole fraction of n-heptane in the liquid phase
R = 0.08314;//( L*bar/(mol*K)) Universal gas constant 

// Changing the pressure in bar
Pb = (800/14.7)*(1.01325);//[bar]

// In this problem we will denote ethane by 'e' and that to n-heptane by 'h'
// From table A.1 ( page 417 ) given in the book, critical temperatures of ethane and heptane are 
T_c_e = 305.3;//[K]
T_c_h = 540.2;//[K]

// and critical pressures are
P_c_e = 48.72;//[bar]
P_c_h = 27.40;//[bar]

// also the accentric facors are 
w_e = 0.1;
w_h = 0.35;

// Thus we have
P_r_e = Pb/P_c_e;
P_r_h = Pb/P_c_h;

// Now from equations (F.13) and (F.14) ( page 459 ) given in the book we have
// A_e = 0.42747 + ( 1 + (0.480 + 1.574*w_e - 0.17*w_e^(2))*( 1 - T_r_e^(0.5)))^(2)*(P_r_e/T_r_e^(2));
// A_h = 0.42747 + ( 1 + (0.480 + 1.574*w_h - 0.17*w_h^(2))*( 1 - T_r_h^(0.5)))^(2)*(P_r_h/T_r_h^(2));
// and
// B_e = 0.08664*(P_r_e/T_r_e);
// B_h = 0.08664*(P_r_h/T_r_h);

// We will take the help trial and error method both on Temperature and the vapor phase composition of ethane
// Let us assume the starting temperature 200 deg F. Changing this temperature in K
T = (200-32)*5/9 + 273.15;//[K]
err = 1;

while err > 10^(-4)
    T_r_e = T/T_c_e;
    T_r_h = T/T_c_h;
    A_e = 0.42747*( 1 + (0.480 + 1.574*w_e - 0.17*w_e^(2))*( 1 - T_r_e^(0.5)))^(2)*(P_r_e/T_r_e^(2));
    A_h = 0.42747*( 1 + (0.480 + 1.574*w_h - 0.17*w_h^(2))*( 1 - T_r_h^(0.5)))^(2)*(P_r_h/T_r_h^(2));
    
    B_e = 0.08664*(P_r_e/T_r_e);
    B_h = 0.08664*(P_r_h/T_r_h);
    
    // Now we will take the starting value of vapor phase composition of ethane as 
    y_e = 0.9;
    err1 = 1;
    
    while err1 > 10^(-6)
        // Now value of A_mix and B_mix for both liquid and vapor phase are calculated as
        
        A_mix_l = (x_e*sqrt(A_e) + x_h*sqrt(A_h))^(2);// For liquid phase
        A_mix_v = (y_e*sqrt(A_e) + (1 - y_e)*sqrt(A_h))^(2);// For vapor phase
        B_mix_l = (x_e*B_e + x_h*B_h);// For liquid 
        B_mix_v = (y_e*B_e + (1 - y_e)*B_h);// For liquid 
        deff('[y]=f(z1)','y = z1^(3) - z1^(2) + z1*(A_mix_l - B_mix_l - B_mix_l^(2)) - A_mix_l*B_mix_l');
        z_l = fsolve(0.2,f);
        // and
        deff('[y]=g(z2)','y = z2^(3) - z2^(2) + z2*(A_mix_v - B_mix_v - B_mix_v^(2)) - A_mix_v*B_mix_v');
        z_v = fsolve(0.3,g);
        // Now
        phi_el = B_e/B_mix_l*( z_l - 1) - log(z_l - B_mix_l) - (A_mix_l/B_mix_l)*(2*sqrt(A_e/A_mix_l)-B_e/B_mix_l)*log(1-B_mix_l/z_l);
        phi_hl = B_h/B_mix_l*( z_l - 1) - log(z_l - B_mix_l) - (A_mix_l/B_mix_l)*(2*sqrt(A_h/A_mix_l)-B_h/B_mix_l)*log(1-B_mix_l/z_l);
        phi_ev = B_e/B_mix_v*( z_v - 1) - log(z_v - B_mix_v) - (A_mix_v/B_mix_v)*(2*sqrt(A_e/A_mix_v)-B_e/B_mix_v)*log(1-B_mix_v/z_v);
        phi_hv = B_h/B_mix_v*( z_v - 1) - log(z_v - B_mix_v) - (A_mix_v/B_mix_v)*(2*sqrt(A_h/A_mix_v)-B_h/B_mix_v)*log(1-B_mix_v/z_v);
        K_e = phi_el/phi_ev;
        K_h = phi_hl/phi_hv;
        y_e1 = K_e*x_e;
        y_h1 = K_h*x_h;
        err1 =abs((y_e1 - y_e));
        y_e = y_e1;
    end

    err = abs((y_e1 + y_h1) -1);
     T = T + 0.1;

end

// Changing the temperature in deg F, we have 
Tf = ( T - 273.15)*9/5 + 32;//[F]

printf(" Bubble point of the given ethanol and n-heptane mixture at 800 psia is %f deg F\n",Tf);
printf(" Amount of ethanol in the vapour phase of the mixture at the given condition is %f \n",y_e1);
printf(" Amount of n-heptane in the vapour phase of the mixture at the given condition is %f ",y_h1);
