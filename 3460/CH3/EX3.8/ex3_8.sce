Ic=8;//given carrier current
It=8.95;//given current
//part a
M=((2*It*It)/(Ic*Ic))-2;//temporary variable
m=sqrt(M);//modulation factor
disp(m,'modulation factor is=');
//part b
x=(m*m/2)+1;//temporary variable
It=Ic*sqrt(x);//total current
disp(It,'total current is=');


