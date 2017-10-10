clc;
//page no 8-62
//Example 8.23_ii
//To calculate fi such that alpha at 30MHz is 44.9 dB or 176.48
alpha=176.48;
Q=125;
rho=sqrt((alpha^2-1)/Q^2)
disp(rho,'rho=');
//rho=(fsi'/fs')-(fs'/fsi')
//1.412=(fsi'/fs')-(fs'/fsi')=(1.93/1)-(1/1.93)
//fs'/fsi'=1/1.93
//fs'/(fs'+2*fi)=1/1.93
fi=[(30*1.93)-30]/2;//Answer was slightly wrong
disp(+'MHz',fi,'IF required=');

