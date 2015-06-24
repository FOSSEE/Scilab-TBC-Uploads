//steady state errors from open loop transfer function
s=%s;
//type 1 system
G=syslin('c',(s+3.15)/(s*(s+1.5)*(s+0.5)))//K=1
disp(G,"G(s)=")
H=1;
y=G*H;
disp(y,"G(s)H(s)=")
syms s;
Kv=limit(s*y,s,0); //Kv= velocity error coefficient
Ess=1/Kv
//Refering the table 7.1 given in the book ,For type 1 system  Kp=%inf,Ess=0 & Ka=0,Ess=%inf
printf("For type1 system \n step input Kp=inf Ess=0 \n \n parabolic input Ka=0 Ess=inf \n ")
disp(Kv,"ramp input Kv=")
disp(Ess,"Ess=")
//type 2 system
p=poly([1],'s','coeff');
q=poly([0 0 12 1],'s','coeff');
G=p/q;//K=1
disp(G,"G(s)=")
H=1;
y=G*H;
disp(y,"G(s)H(s)=")
Ka=limit(s^2*y,s,0); //Ka= parabolic error coefficient
Ess=1/Ka
//Refering the table 7.1 given in the book ,For type 2 system  Kp=%inf,Ess=0 & Kv=inf,Ess=0
printf("For type2 system \n step input Kp=inf Ess=0 \n ramp input Kv=inf Ess=0 \n ")
disp(Ka,"parabolic input Ka=")
disp(Ess,"Ess=")
//type 2 system
p=poly([5 5],'s','coeff');
q=poly([0 0 60 17 1],'s','coeff');
G=p/q;//K=1
disp(G,"G(s)=")
H=1;
y=G*H;
disp(y,"G(s)H(s)=")
Ka=limit(s^2*y,s,0); //Ka= parabolic error coefficient
Ess=1/Ka
//Refering the table 7.1 given in the book ,For type 2 system  Kp=%inf,Ess=0 & Kv=inf,Ess=0
printf("For type2 system \n step input Kp=inf Ess=0 \n ramp input Kv=inf Ess=0 \n ")
disp(Ka,"parabolic input Ka=")
disp(Ess,"Ess=")
