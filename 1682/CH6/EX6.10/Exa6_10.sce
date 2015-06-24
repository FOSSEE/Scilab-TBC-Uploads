//Exa 6.10
clc;
clear;
close;
//Brand A : 
disp("Brand A : ");
w=12;//in months
P=1200;//in Rs/tyre
i=12;//in % nominal rate(Compounded anually)
i=i/12;//in % compounded monthly
//Formula : (A/P,i,n) : ((i/100)*(1+i/100)^n)/(((1+i/100)^n)-1)
AE_A=P*((i/100)*(1+i/100)^w)/(((1+i/100)^w)-1);//in RS
disp(AE_A,"The annual equivalent for this brand in RS. : ");

//Brand B : 
disp("Brand B : ");
w=24;//in months
P=1800;//in Rs/tyre
i=12;//in % nominal rate(Compounded anually)
i=i/12;//in % compounded monthly
//Formula : (A/P,i,n) : ((i/100)*(1+i/100)^n)/(((1+i/100)^n)-1)
AE_B=P*((i/100)*(1+i/100)^w)/(((1+i/100)^w)-1);//in RS
disp(AE_B,"The annual equivalent for this brand in RS. : ");

//Brand C : 
disp("Brand C : ");
w=36;//in months
P=2100;//in Rs/tyre
i=12;//in % nominal rate(Compounded anually)
i=i/12;//in % compounded monthly
//Formula : (A/P,i,n) : ((i/100)*(1+i/100)^n)/(((1+i/100)^n)-1)
AE_C=P*((i/100)*(1+i/100)^w)/(((1+i/100)^w)-1);//in RS
disp(AE_C,"The annual equivalent for this brand in RS. : ");

//Brand D : 
disp("Brand D : ");
w=48;//in months
P=2700;//in Rs/tyre
i=12;//in % nominal rate(Compounded anually)
i=i/12;//in % compounded monthly
//Formula : (A/P,i,n) : ((i/100)*(1+i/100)^n)/(((1+i/100)^n)-1)
AE_D=P*((i/100)*(1+i/100)^w)/(((1+i/100)^w)-1);//in RS
disp(AE_D,"The annual equivalent for this brand in RS. : ");

disp("Here common multiple lives of tyres is considered. This is 144 months. Therefore, the comparison is nade on 144 months basis.");
disp("The annual equivalent cost of Brand C is less than that of other brands. hence, it should be used in the vehicles of the trucking company. It should be replaced  for times during the 144 months period.");