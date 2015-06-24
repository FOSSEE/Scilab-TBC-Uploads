//Chapter-9,Example 9,Page 221
clc();
close();

strength =0.05   //strength of CH3COOH

Ka=1.8*10^-5

//              CH3COOH <---> CH3COO- +  H+
//intially  =     0.05          0        0
//dissolution                   a 
//at equilibrium= 0.05(1-a)   0.05*a   0.05*a
//Ka =(0.05*a*0.05*a)/(0.05(1-a))
//Ka=0.05*a^2      a=negligible   1-a=1

a=sqrt(Ka/strength)

printf('the degree of dissolution is %.4f ',a)
