clear;
//clc();

// Example 12.3
// Page: 321
printf("Example-12.3  Page no.-321\n\n");

//***Data***//
Temp = 2000;//[K]
n_air = 1;//[mol] no of moles of the air

// Let the moless of the NO formed be 2*x
// Then at equilibrium the unreacted moles of the N2 and O2 will be (0.78-x) and (0.21-x) respectively

// from the previous example, we have 
// [y_NO]^(2) = K_298*[y_N2]*[y_O2]
// here 
K_2000 = 4*10^(-4);
// Substituting all the values, we have 
// (2*x)^(2) = K_2000*(0.78-x)*(0.21-x)

//Now 
deff('[y]=f(x)','y = (2*x)^(2) - K_2000*(0.78-x)*(0.21-x)');
//deff('[y]=f(x)','y = (K_2000-2)*x^(2)-K_2000*(0.78+0.21)*x+K_2000*0.78*0.21');
x = fsolve(0,f);
// Here negative root is meaningless,so
// concentration of NO
c_NO = 2*x*10^(6);//[ppm]
// now
p = c_NO/8100*100;
printf(" The calculated NO cocentration is %f ppm, which %f%% of the value computed in example 12.1",c_NO,p);