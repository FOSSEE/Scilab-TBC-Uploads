     //EXAMPLE 2-73   PG NO-112
R=44.074;
V=230;
I=3.05;
Z=V/I;
Y=2.475;
X=(Z*Z-R*R)^0.5;
L=X/(2*%pi*50)     
Xc=V/Y;
C=1/(2*50*Xc*%pi);
disp(' impedance is = '+string(Z)+' ohm');       
disp(' X is = '+string(X)+' W');    
disp('inductance  is = '+string(L)+'H ');  
disp(' Xc is = '+string(Xc)+' ohm');
disp(' Capacitor is = '+string(C)+' F');    
