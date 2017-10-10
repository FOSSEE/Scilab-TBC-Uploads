//Exa 1.2

clc;
clear all;

//Refering to table 1.1- Set of 10 measurements that were recorded in the laboratory.

X={98;101;102;97;101;100;103;98;106;99}; //From table 1.1

//solution
X_n= mean(X); //Average value
Prec=1-abs((X(6)-X_n)/X_n);//precision of 6th reading
printf('The precision of 6th measurement = %0.3f \n',Prec);
