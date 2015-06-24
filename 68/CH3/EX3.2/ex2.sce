//Example 3.2 : Values of Iand V for the circuit given
disp("Consider fig 3.6(a). Assume both diodes are conducting")
I_D2=(10-0)/10;
I=(0-(-10))/5-I_D2; // node eqution at B for fig 3.6(a)
V_B=0;
V=0;
disp(I,"I (mA)=", V,"V (V)" ,"D_1 is conducting as assumed originally")
disp("Consider fig 3.6(a). Assume both diodes are conducting")
I_D2=(10-0)/5;
I=(0-(-10))/10-2; // node eqution at B for fig 3.6(b)
disp(I,"I (mA)=", V,("V (V)"))
disp("Implies assumption is wrong. lets assume D_1 is off and D_2 is on")
I_D2=(10-(-10))/15;
V_B=-10+10*I_D2;
I=0;
disp(I,"I (mA)", V_B,"V (V)" ,"D_1 is reverse biased")