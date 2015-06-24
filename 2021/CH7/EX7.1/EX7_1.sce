//Finding of Loss of Head
//Given
q1=200;
d1=150;
d2=300;
g=9.81;
//To Find
v1=200*(4/%pi)*(100/150)^2;
disp(v1);
v2=200*(4/%pi)*(100/300)^2;
disp(v2);
h=((v1-v2)^2)/20*g;
h1=h/1000;
disp(" Loss of Head ="+string(h1)+" meter of water"); 
