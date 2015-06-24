//coefficient//
p=poly([5],'s','coeff');
q=poly([5 3 1],'s','coeff');
G=p/q
H=0.6
y=G*H //type 0
//refering the table 8.2 given in the book ,for type 1 Ka=0 & Kv=0
syms s
Kp=limit(s*y/s,s,0) // Kp=positional error coefficient
