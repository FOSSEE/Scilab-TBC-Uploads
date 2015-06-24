clear ;
clc;

// Example 4.2
printf('Example 4.2\n\n');
// Page no. 93
// Solution

// Given
// Heat capacity = 139.1 + (1.56*10^-1)Tc J/(g mol* degree C), T is in degree C
// First convert Tc (Temperature in degree celsius) to TR (in degree R) to get c + dTR, where
c = 139.1 + (1.56*10^-1)*(-460-32)/1.8 ;
d = (1.56*10^-1)/1.8;

//Now convert c +dTR to (Btu/lb mol*degree R) to get answer of form a + bTR,where
a = c*(454/(1055*1.8)) ;
b = d*(454/(1055*1.8)) ;

printf('The required answer is %.2f + (%.2e)T Btu/(lb mol*degree R) , where T is in degree R .  \n',a,b);