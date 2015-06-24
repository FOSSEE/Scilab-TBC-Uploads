//coefficient//
s=%s;
p=poly([10],'s','coeff');
q=poly([0 0 1],'s','coeff');
G=p/q;
H=0.7;
y=G*H; //type 2
disp(y,"G(s)H(s)=")
//refering the table 8.2 given in the book ,for type 1 Kp=%inf & Kv=%inf
printf("For type1  Kp=inf & Kv=inf \n")
syms s;
Ka=limit(s^2*y,s,0); //Ka=accelaration error coefficient
disp(Ka,"Ka=")
