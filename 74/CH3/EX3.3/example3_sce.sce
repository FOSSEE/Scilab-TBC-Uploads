//chapter 3
// example 3.3
//page 112
A=2*10^5;//open loop gain
Rin=2*10^6;// input resistnace
Ro=75;// output resistance
Fo=5;// single break frequency in herzt
R1=470;Rf=4700;
K=Rf/(Rf+R1)
B=R1/(R1+Rf)
Af=-(A*Rf)/(R1+Rf+R1*A);//close loop gain
Rinf=R1+(Rf*Rin)/(Rf+Rin+A*Rin);
disp(Rinf)//close loop resistance
Rof=Ro/(1+A*B);//close loop output resistance
disp(Rof)//output resistance
Ff=Fo*(1+A*B);
disp(Ff)//bandwidth with feedback