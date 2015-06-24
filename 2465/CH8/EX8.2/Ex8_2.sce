//Chapter-8,Example 2,Page 195
clc();
close();

H=20*0.1/1000    //as 20 ml of 0.1M HCl 

pH=-log10(H)

pOH=14-pH

OH=10^(-pOH)

printf(' the [H+] = %.4f mole/l',H)

printf('\n  the [OH-] =')

disp(OH)

printf('  mole/l')

printf('\n  the pH = %.f ',pH)
