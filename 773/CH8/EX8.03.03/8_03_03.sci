//coefficient//
p=poly([1 0.13 0.4],'s','coeff');
q=poly([0 0 5 3 1],'s','coeff');
G=10*p/q //gain FACTOR=10
H=0.8
y=G*H //type 2
//refering the table 8.2 given in the book ,for type 2 Kp=%inf & Kv=%inf
syms s
Ka=limit(s^2*y,s,0) //Ka=accelaration error coefficient


