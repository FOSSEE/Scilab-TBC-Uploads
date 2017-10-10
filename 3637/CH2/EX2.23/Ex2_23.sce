//problem 23 paenumber 2.106
//given
vi=[10e-3,100e-3,1];format(6);
r1=10e3;//ohm
i1=1e-13;//A
//determine output voltage
w=1;
while w<=3
     disp('Output voltage for vi '+string(vi(w))+' = '+string(((-0.02571)*(log(vi(w)/(i1*r1))))*10^3)+' mV');//error in book
     w=w+1;
 end
