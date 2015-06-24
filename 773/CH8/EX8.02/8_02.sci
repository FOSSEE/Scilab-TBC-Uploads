//Velocity//
s=%s;
p=poly([3 1],'s','coeff');
q=poly([0 1 0.95 0.21],'s','coeff');
G=p/q;
disp(G,"G(s)=")
H=1;
y=G*H; //Type 1 System
disp(y,"G(s)H(s)=")
//Refering the table 8.2 given in the book ,For type 1 system  Kp=%inf & Ka=0
printf("For type1  Kp=inf & Ka=0 \n")
syms s;
Kv=limit(s*y,s,0); //Kv= velocity error coefficient
disp(Kv,"Velocity Error Coefficient(Kv)=")


