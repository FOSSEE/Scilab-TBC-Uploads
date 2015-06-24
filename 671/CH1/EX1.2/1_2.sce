// X cos(w t+p)+Y sin(w t+q)

X=50
Y=-30
w=120
p=-45
p=p/180*%pi;
q=160
q=q/180*%pi;

//Part1

A=X*cos(p)+ Y*sin(q);
B=-X*sin(p)+ Y*cos(q);

disp(B,"B=",A,"A=")
