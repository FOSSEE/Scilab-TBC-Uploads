//Example 1.6: 
clc;
clear;
close;
//given data :
format('e',9)
e=1.6*10^-19;// in V
ni=1.5*10^16;//in m^3
mu_p=0.13;// holes mobilities in m^2/V-s
mu_n=0.05;// electrons mobilities in m^2/V-s
sgint=e*(ni*(mu_p+mu_n));//electrical conductivity in mho/m
siat=10^8;//number of silicon atoms
ta=5*10^28;//silicon atoms in atoms/m^3
Nd=ta/siat;// in atoms/m^3
p= ni^2/Nd;//holes concentration in holes/m^3
n=Nd;//
mu_n=0.13;// electrons mobilities in m^2/V-s
sntype=e*n*mu_n;// in mho/m
disp(sgint,"(i) electrical conductivity is ,(mhos/m)=")
format('e',8)
disp(p,"(ii) holes concentration is, (holes/m^3)=")
format('v',5)
disp(sntype,"(ii) conductivity is ,(mho/m)=")
siat=10^8;//number of silicon atoms
ta=5*10^28;//silicon atoms in atoms/m^3
Na=ta/siat;// in atoms/m^3
n= ni^2/Na;//holes concentration in holes/m^3
p=Na;//
mu_p=0.05;//holes mobilities in m^2/V-s
sptype=e*p*mu_p;// in mho/m
format('e',8)
disp(n,"(iii) electron concentration is, (holes/m^3)=")
format('v',3)
disp(sptype,"(iii) conductivity is ,(mho/m)=")

