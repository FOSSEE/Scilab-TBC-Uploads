//example 12.3
clc; funcprot(0);
Ap=%pi/4*1.5^2;
Db=1.5;
z=3;
p=%pi*1;
Li=6;
N60=30;
sigmazi=16*z;
Beta=2.0-0.15*z^0.75;
fi=Beta*sigmazi;
qp=57.5*N60;
qpr=1.27/Db*qp;
Qunet=qpr*Ap+fi*p*Li;
disp(Qunet,"allowed load in kN");
//part b
k1=0.315; //from table
k2=12/1.5/1000*100;
Qunet2=qpr*Ap*k1+fi*p*Li*k2;
disp(Qunet2,"allowed load in kN");

