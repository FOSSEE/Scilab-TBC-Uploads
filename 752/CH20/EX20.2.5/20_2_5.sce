clc;
//page no 763
//prob no. 20.2.5
d=10*10^-6;wave=1.3*10^-6;n1=1.55;V_max=2.405clc;

//page no 762
//prob no. 20.2.4
NA=(V_max*wave)/(%pi*d);
//a)Dtermination of maximum normailized index difference
del=(1/2)*(NA/n1)^2;
disp(del,'a)the normilized index difference is');
//b)Determination of reffactive index of claddin glass
n2=n1*(1-del);
disp(n2,'b)cladding index required is');
//Determination of the fiber acceptance angle 
theta_max=asind(NA);
disp(theta_max,'the max acceptance angle is');