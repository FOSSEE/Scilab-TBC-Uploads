//Finding pf Metacentric Height
//Given
d=3;
h=2;
spgr=0.7;
h1=h*spgr;
pi=3.14;
//To Find
h2=h/2;
h3=h1/2;
h4=h2-h3;
mh=(pi*d^4)/64;
vwd=(pi*d^2*h1)/4;
mg=(mh/vwd)-h4;
disp("Metacentric Height is ="+string(mg)+" meter");
