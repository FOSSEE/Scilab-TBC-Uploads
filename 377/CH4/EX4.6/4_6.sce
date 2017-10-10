disp("Nd = f*(Ec-Ed) = (exp(((Ec-Ed-Ef)/(K)*(T))+1))^-1");
disp("Ef=Ec-45 & Ed=45meV");
disp("(Ec-Ed-Ef)=(Ec-45-(Ec-200)) = 155 meV = 2.48*10^-20 J");
a= (2.48)*(10^-20);  //say (Ec-Ed-Ef)=a
K=(1.38)*(10^-23);
T=300;
b=(exp(((a)/(K*T)))+1)^(-1);
printf('the value of Nd = %f',b);
d=b*100;  //'d' is the percentage value of Nd
printf('\nSo the percentage of donor states that are occupied are %f percent',d);