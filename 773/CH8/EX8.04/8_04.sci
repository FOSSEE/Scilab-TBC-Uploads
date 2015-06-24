//coefficient//
p=poly([4 1],'s','coeff');
q=poly([0 0 6 5 1],'s','coeff');
syms K real;
y=K*p/q //gain FACTOR=K
disp(y,"G(s)H(s)=")
//G(s)H(s)=y ,and it is of type 2
//refering the table 8.2 given in the book ,for type 2 Kp=%inf & Kv=%inf
printf("For type1  Kp=inf & Kv=inf \n")
syms A s t;
Ka=limit(s^2*y,s,0);  //Ka=accelaration error coefficient
disp(Ka,"Ka=")
//given input is r(t)=A(t^2)/2 & R(s)=laplace(r(t))
printf("Given r(t)=A(t^2)/2 \n")
R=laplace('A*t^2/2',t,s);
disp(R,"R(s)=")
//steady state error =Lt s->0 sR(S)/1+G(s)H(S)
e=limit(s*R/(1+y),s,0)
disp(e,"Ess=")

 
