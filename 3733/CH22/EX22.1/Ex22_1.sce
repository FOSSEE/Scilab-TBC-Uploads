// Example 22_1
clc;funcprot(0);
//Given data
p_1=30;// The boiler pressure in bar
p_2=1;// The condenser pressure in bar

//Calculation
//(a)
// From steam tables, at pressure P_b=30 bar
h_1=2796;// kJ/kg
//For finding the dryness-fraction of steam at the point 'c',we can equate  the entropies.
// At pressure 30 bar=At pressure 1 bar
// From steam tables, at pressure P_1=30 bar and P_2=1 bar
T_s1=232.8;//°C
T_s2=99.1;//°C
h_f2=414.6;// kJ/kg
h_fg1=1797;// kJ/kg
h_fg2=2253;// kJ/kg
v_f2=0.001043;// m^3/kg
// Assume x_2=y(1)
function[X]=drynessfraction(y)
    X(1)=((2.3026*log10((T_s2+273)/273))+((y(1)*h_fg2)/(T_s2+273)))-((2.3026*log10((T_s1+273)/273))+(h_fg1/(T_s1+273)));
endfunction
y=[0.1];
z=fsolve(y,drynessfraction);
x_2=z(1);
//x_2=z(1);// Dryness fraction
h_2=h_f2+(x_2*h_fg2);// kJ/kg
n_r1=((h_1-h_2)/(h_1-h_f2))*100;// The thermal efficiency of the cycle without feed pump work in %
//(b)
W_p=(v_f2*(p_1-p_2)*10^5)/1000;// kJ
n_r2=(((h_1-h_2)-W_p)/(h_1-(h_f2+W_p)))*100;// The thermal efficiency of the plant feed pump work in %
printf('\nThe thermal efficiency of the cycle without feed pump work=%0.2f percentage \nThe thermal efficiency of the cycle with feed pump work=%0.2f percentage',n_r1,n_r2);
// The answer vary due to round off error

