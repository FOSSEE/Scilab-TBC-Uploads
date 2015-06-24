clear;
//clc();

// Example 10.2
// Page: 262
printf("Example-10.2  Page no.-262\n\n");
printf(" Please wait for the result\n\n");

//***Data***//

P = 800;//[psia] Bubble point pressure
x_ethane = 0.60;// Mole fraction of ethane in liquid phase
x_heptane = (1-x_ethane);

// a) From figure 10.7( page 260 ) given in the book
// We read the chart to get the bubble-point temperature
// The dew point curve for 800 psia crosses the 60 mol% ethane line at about temperature 
// T1 = 165
// Now, we horizontally from that intersection point to the dew-point curve, finding the vapor phase composition of ethane 
// y1_e = 0.95
// But, by linear interpolation in the experimental data on which Figure 10.7 is based we make a slightly more reliable estimate and get 
T1 = 209;//[F]
y1_e = 0.945;
y1_h = (1- y1_e);

// b) By Raoult's law, we use a trial and error procedureon the temperature
// Antoine equation constants for ethanol are given 
A_e = 6.80267;
B_e = 656.4028;
C_e = 255.99;

// and that for n-heptane are
A_h = 6.9024;
B_h = 1268.115;
C_h = 216.9;

// Antoine equation is given by
// (log10p) = (A - B/(T+C))
 T = 50;//[C]
 err = 1;
 
while err > 10^(-4)
    p1_e = (10^(A_e - B_e/(C_e + T)))*(14.7/760);
    p1_h = (10^(A_h - B_h/(C_h + T)))*(14.7/760);
    y2_e = p1_e*x_ethane/P;
    y2_h = p1_h*x_heptane/P;
    err = abs((y2_e + y2_h) - 1);
    T = T + 0.0001;
  end

// Changing the temperature in deg F 
T2 = T*9/5 + 32;//[F] Bubble-point temperature

// c) In this method, we use L-R rule, instead of simple Raoult's law
// So,
// y_i = (x_i*p_i)/(v_i*P)
// Where calculated values of v_i from EOS are given  
v_e = 0.6290642;// For ethane
v_h = 0.0010113;// For n-heptane

// We again use trial and error on the temperature
// Let us assume the initial temperature 
 Ti = 10;//[C]
 err = 1;
 
while err > 10^(-4)
    p2_e = (10^(A_e - B_e/(C_e + Ti)))*(14.7/760);
    p2_h = (10^(A_h - B_h/(C_h + Ti)))*(14.7/760);
    y3_e = p2_e*x_ethane/(P*v_e);
    y3_h = p2_h*x_heptane/(P*v_h);
    err = abs((y3_e + y3_h) - 1);
    Ti = Ti + 0.0001;
  end

// Changing the temperature in deg F 
T3 = Ti*9/5 + 32;//[F] Bubble-point temperature

printf(" The results are summarized in the following table:\n\n");
printf(" \t   Variable \t\t\t Values calculated from\t\t\t Values calculated from \t\t\t Values calculated \n \t\t\t\t\t from figure 10.7 \t\t\t Raoult''s law \t\t\t\t\t from L-R rule\n\n");
printf(" \t  T(deg F) \t\t\t\t %f \t\t\t\t %f \t\t\t\t    %f\n",T1,T2,T3);
printf(" \t  y_ethane \t\t\t\t %f \t\t\t\t %f \t\t\t\t    %f\n",y1_e,y2_e,y3_e);
printf(" \t  y_heptane \t\t\t\t %f \t\t\t\t %f \t\t\t\t    %f\n\n",y1_h,y2_h,y3_h);
printf(" Where T is boiling point temperature");
