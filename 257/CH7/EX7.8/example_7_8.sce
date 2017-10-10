q=poly([1 1.105 0.1055 0.0005],'s','coeff');
G=20000/q //gain FACTOR=20000
H=1
y=G*H
p=poly([0 1],'s','coeff');
R=1000/p

Kp=limit(s*y/s,s,0)
Ess=1000/(1+Kp)

Css=1000-Ess
disp(Css," Css = ")
