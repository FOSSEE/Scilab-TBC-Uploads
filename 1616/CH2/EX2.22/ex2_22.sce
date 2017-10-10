//ex2.22    Design the transmission line section as areactive element

f=6e9;
w=2*%pi*f;
L=0.01e-6;
X=w*L;
Z0=150;
lamda=4.0;
b=2*%pi/lamda;
loc=(1/b)*acot(-X/Z0);       //length of the line
disp('The reactance to be realized is '+string(X)+' ohm');
disp('The length of the line therefore is = '+string(loc)+' cm');

