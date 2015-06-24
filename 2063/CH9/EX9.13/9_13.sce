clc
clear
//Input data
P1=1;//Initial pressure in bar
P3=9;//Final pressure in bar
n=1.3;//Compression index

//Calculations
W1=(n/(n-1))*(P1*10^5*(((P3/P1)^((n-1)/n))-1));//Work done in compression in a single stage per unit volume per kg of air in N m 
P2=(P1*P3)^(0.5);//Intercooler pressure for perfect intercooling in bar
W2=2*(n/(n-1))*(P1*10^5*(((P2/P1)^((n-1)/n))-1));//Work done in compression in a two stage compressor per unit volume per kg of air in N m
Wc=W1-W2;//Saving in work of compression in N m
nw=((W1-W2)/W1)*100;//Percentage saving in work of compression in percentage

//Output
printf('Percentage saving in the work of compression of air in two stages instead of single stage is %3.2f percent',nw)
