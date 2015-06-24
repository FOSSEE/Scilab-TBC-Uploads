//value//
s=%s;
num=real(poly([1],'s',"coeff"))
den=real(poly([-1,-2+%i,-2-%i],'s'))
H=num/den
evans(H,100)
k=1.5;
disp(k,"K(design)=")
//Kpure calculates the value of k at imaginary crossover
[K,Y]=kpure(H)  
GM=K/k;
disp(GM,"value of k at imaginary crossover/k(design)=")
disp(GM,"gain margin=")
