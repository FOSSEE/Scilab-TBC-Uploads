//coefficient//
p=poly([40,20],'s','coeff');
q=poly([0,0,5,6,1],'s','coeff');
G=p/q;
H=1;
y=G*H; //type 2
disp(y,"G(s)H(s=")
//refering the table 8.2 given in the book ,for type 2 Kp=%inf & Kv=%inf
syms s t;
Ka=limit(s^2*y,s,0) //Ka= accelaration error coefficient
//given input is r(t)=1+3t+t^2/2 & R(s)=laplace(r(t))
R=laplace('(1+3*t+(t^2/2))',t,s)
//steady state error =Lt s->0 sR(S)/1+G(s)H(S)
e=limit(s*R/(1+y),s,0) //e=error for ramp input
disp(e,"steady state error")

 

