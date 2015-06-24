//Chapter-8,Example 3,Page 195
clc();
close();

//solution for (a) part

conc1=1*10^-8   //concentration of HCl solution

//let [H+] concentration from water = x
//so, [H+] of solution = conc1*x an [OH-] = x
//......Kw = [H+]*[OH-] = 10^-14
//......x^2 +(10^-8)*x -(10^-14)=0
x = (-10^-8 + sqrt((10^-8)^2 + 4*1*10^-14))/(2*1)

H=conc1 +x 

pH1=-log10(H)

printf('for HCl the pH = %.3f',pH1)


//solution for (b) part
conc2= 1*10^-8   //concentration of NaOH solution

OH=x+conc2

pOH2=-log10(OH)

pH2=14 - pOH2

printf('\n for NaOH the pH = %.3f',pH2)

