clc;clear;
//Example 15.1

//given data
ma=1;
Ma=2;
mb=1;
Mb=12;
mc=1;
Mc=238;//m is mass of neutron and M is mass of other neucleus

//calculation
n=(4*ma*Ma/(ma+Ma)^2)*100;
disp(n,'Maximum fraction of KE lost by a neutron for (a)');
n=(4*mb*Mb/(mb+Mb)^2)*100;
disp(n,'Maximum fraction of KE lost by a neutron for (a)');
n=(4*mc*Mc/(mc+Mc)^2)*100;
disp(n,'Maximum fraction of KE lost by a neutron for (a)')