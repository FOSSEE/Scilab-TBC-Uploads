//chapter 1
//example 1.16
//page 48,figure 1.59
Ie=400*10^-6;
Bmin=80;Bmax=120;
//Ie=Ie1+Ie2   for identical transistor Ie1=Ie2
Ie1=Ie/2
Ie2=Ie/2
IB1max=Ie1/(1+Bmin)
IB2max=Ie2/(1+Bmin)
IBmax=(IB1max+IB2max)/2;
disp(IBmax)//largest input bais current
IB1min=Ie1/(1+Bmax)
IB2min=Ie2/(1+Bmax)
IBmin=(IB1min+IB2min)/2;
disp(IBmin)// smallest current
Iios=IBmax-IBmin// input bais current
disp(Iios)//result