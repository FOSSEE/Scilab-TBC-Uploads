//coefficient//
p=poly([140,35],'s','coeff');
q=poly([0 ,10 ,7 ,1],'s','coeff');
G=p/q
H=1
y=G*H //type 1
//refering the table 8.2 given in the book ,for type 1 Kp=%inf & Ka=0
syms s
Kv=limit(s*y,s,0) //Kv= velocity error coefficient
//given input is r(t)=5*t & R(s)=laplace(r(t))
R=laplace('5*t',t,s)
//steady state error =Lt s->0 sR(S)/1+G(s)H(S)
e=limit(s*R/(1+y),s,0) //e=error for ramp input
disp(e,"steady state error")

 

