//to determine armature current

clc;
n1=1600;
Ia1=120;
n2=400;
Ia2=(n1*Ia1)/n2;    //P=K*Ia*n
disp(Ia2,'Ia(A)');
