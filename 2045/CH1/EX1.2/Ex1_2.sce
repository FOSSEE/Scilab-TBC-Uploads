//pagenumber 25 example 2
clear
format(12)
numfre=7.87*10^28;//per cubic metre
molity=34.8;//square centimetre/velocity second
e=30;//volt per centimetre
//(1)
molity=molity*10^-4;q=1.6*10^-19;
conduc=numfre*q*molity;
//(2)
e=e*10^2;
veloci=(molity*e);
curden=conduc*e;
disp("conductivity   =   "+string((conduc))+"second per metre");
disp("drift velocity   =   "+string((veloci))+"metre per second");
disp("density   =   "+string((curden))+"ampere per cubic metre");



