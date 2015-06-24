//A Textbook of Chemical Engineering Thermodynamics
//Chapter 8
//Phase Equilibria
//Example 8


clear;
clc;


//Given:
//Antoine Equations:

function [y1] = P1(T)
    y1 = %e^(14.5463 - 2940.46/(T-35.93))  //vapour pressure of acetone
endfunction

function [y2] = P2(T)
    y2 = %e^(14.2724 - 2945.47/(T-49.15))  //vapour pressure of acetonitrile
endfunction

//To determine temperature pressure and compositions
//(a). To calculate x1 and y1
T = 327; //temperature in K
P = 65; //pressure in kPa

P1_s = P1(T);
P2_s = P2(T);
//Using eq. 8.51 (Page no. 332)
x1 = (P-P2_s)/(P1_s-P2_s);
//Using eq. 8.54 (Page no. 333)
y1 = x1*(P1_s/P);
mprintf('(a)');
mprintf('\n x1 = %f',x1);
mprintf('\n y1 = %f',y1);

//(b). To calculate T and y1
P = 65; //pressure in kPa
x1 = 0.4;

flag = 1;
T2 = 340; //temperatue (assumed)
while(flag==1)
    P1_s = P1(T2);
    P2_s = P2(T2);
    P_calc = P2_s + x1*(P1_s-P2_s)
    if((P_calc-P)<=1)
        flag = 0;
    else
        T2 = T2-0.8;
    end
end
y1 = x1*(P1_s/P);
mprintf('\n\n (b)');
mprintf('\n Temperature is %f K',T2);
mprintf('\n y1 = %f',y1);

//(c). To calculate P and y1
T3 = 327; //temperature in K
x1 = 0.4;

P1_s = P1(T3);
P2_s = P2(T3);
P = P2_s + x1*(P1_s-P2_s);
y1 = x1*(P1_s/P);
mprintf('\n\n (c)');
mprintf('\n Pressure is %f kPa',P);
mprintf('\n y1 = %f',y1);

//(d). To calculate T and x1
P = 65; //pressure in kPa
y1 = 0.4;

flag = 1;
T = 340; //assumed temperature (K)
while(flag==1)
    P1_s = P1(T);
    P2_s = P2(T);
    y1_calc = (P1_s*(P-P2_s))/(P*(P1_s-P2_s));
    if((y1_calc-y1)>=0.001)
        flag = 0;
    else
        T = T-2;
    end
end
x1 = y1*(P/P1_s);
mprintf('\n\n (d)');
mprintf('\n Temperature = %f K',T);
mprintf('\n x1 = %f',x1);

//(e). To calculate P and x1
T = 327; //temperature (K)
y1 = 0.4;

P1_s = P1(T);
P2_s = P2(T);
//Using eq. 8.54 and 8.51
x1 = (y1*P2_s)/(P1_s-y1*(P1_s-P2_s));
P = x1*(P1_s/y1);
mprintf('\n\n (e)');
mprintf('\n Pressure = %f kPa',P);
mprintf('\n x1 = %f',x1);

//(f). To calculate fraction of the system is liquid and vapour in equilibrium
T = 327; //temperature (K)
P = 65; //pressure (kPa)
y1 = 0.7344;

P1_s = P1(T);
P2_s = P2(T);
x1 = (P-P2_s)/(P1_s-P2_s);
//Let f be the fraction of the mixture that is liquid
//Applying acetone balance
f = (0.7-y1)/(x1-y1);
mprintf('\n\n (f)');
mprintf('\n Fraction of mixture that is liquid is %f percent',f*100);

//end