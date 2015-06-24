// To produce pole-zero plots
// 4.3

exec('label.sci',-1);

zero = [0 5/12];
num = poly(zero,'z',"roots");
pole = [1/2 1/3];
den = poly(pole,'z',"roots");
h = syslin('d',num./den);
plzr(h);

label('Pole-Zero Plot',4,'Real(z)','Imaginary(z)',4); 
