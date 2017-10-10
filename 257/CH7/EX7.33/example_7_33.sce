syms s t
p=poly([8 1],'s','coeff');
q=poly([0 4 1],'s','coeff');
G=2*p/q //gain FACTOR=2
H=1
T=G/(1+G*H) 
R=1/s;
C=T*R
c=ilaplace(C,s,t)
disp(c,"c = ")