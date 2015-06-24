//Chemical Engineering Thermodynamics
//Chapter 2
//P-V-T Relations

//Example 2.9
clear;
clc;

//Given
N1 = 0.7;//Kg mole of CH4
N2 = 0.3;//Kg mole of N2
R = 0.08206;//Gas constant
T = 323;//Temperature in Kelvin
V = 0.04;//Volume in m^3
a1 = 2.280; b1 = 0.0428;//Vanderwaals constants for CH4
a2 = 1.345;b2 = 0.0386;//Vanderwaals constants for N2
Tc1 = 191; Pc1 = 45.8;//Critical temperature in K and pressure of CH4 in atm
Tc2 = 126;Pc2 = 33.5;//Critical temperature in K and pressure of N2 in atm

//To find Approx Value
function[A]=approx(V,n)
  A=round(V*10^n)/10^n;//V-Value  n-To what place
  funcprot(0)
endfunction  

//To calculate the pressure exerted by the gas mixture
//(i)Using ideal gas law
P = (N1+N2)*((R*T)/V);
mprintf('(i) Pressure exerted by the gas mixture using ideal gas law is %d atm',P);

//(ii)Using Vander waal equation
P1 = ((N1*R*T)/(V-(N1*b1)))-((a1*(N1^2))/(V^2));//Partial pressure of CH4
P2 = ((N2*R*T)/(V-(N2*b2)))-((a2*(N2^2))/(V^2));//Partial pressure of N2
Pt = P1+P2;
mprintf('\n(ii) Pressure exerted by the gas mixture using Vander waal equation is %f atm', Pt);

//(iii)Using Zchart and Dalton's law
Tra = T/Tc1;//reduced temperature of CH4
Trb = T/Tc2;//reduced temperature of N2
//Asssume the pressure
P = [660 732 793 815 831];
for i = 1:5
    Pa(i) = N1*P(i);// partial pressure of CH4 for the ith total pressure
    Pb(i) = N2*P(i);// partial pressure of N2 for the ith total pressure
    Pra(i) = Pa(i)/Pc1;//reduced pressure of CH4 for the ith total pressure
    Prb(i) = Pb(i)/Pc2;//reduced pressure of N2 for the ith total pressure
end

//For the above Pr and Tr values compressibility factors  from the figure A.2.3 are given as
Za = [1.154 1.280 1.331 1.370 1.390];//Z values of CH4  
Zb = [1 1 1 1 1];//Z values of N2
V3 = 0.0421;
for i = 1:5
    Pa(i) = Za(i)*N1*((R*T)/V);//partial pressure of CH4 coressponding to the ith total presure
    Pb(i) = Zb(i)*N2*((R*T)/V);//partial pressure of N2 coressponding to the ith total pressure
    Pt(i) = Pa(i)+Pb(i);//total pressure of the gas mixture
    if Pt(i)-P(i) < 15 
    mprintf('\n(iii) pressure exerted by the gas mixture using Z chart and Dalton Law is %d atm',Pt(i));
    else
    end
end

//(iv)Using Amagat's law and Z chart
P = [1000 1200 1500 1700];
for i=1:4
    Pra(i) = P(i)/Pc1;
    Prb(i) = P(i)/Pc2;
end
//For the above Pr and Tr values compressibility factors  from the figure A.2.3 are given as
Za = [1.87 2.14 2.52 2.77];
Zb = [1.80 2.10 2.37 2.54];
for i = 1:4
    Va(i) = approx((N1*Za(i)*((R*T)/P(i))),4);
    Vb(i) = approx((N2*Zb(i)*((R*T)/P(i))),4);
    V1(i) = approx((Va(i)+Vb(i)),4);
    if V1(i)-V <= 0.003
     mprintf('\n(iv) Pressure exerted by the gas mixture using Amagat law and Zchart is %d atm ',P(i));
    else
end
end
//end
