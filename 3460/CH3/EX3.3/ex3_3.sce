

//part a
T=(1e-6)*0.5//given time
fi1=1/T;//frequency of first harmonic
fi2=2/T;//frequency of second harmonic
fi3=3/T;//frequency of third harmonic
fi4=4/T;//frequency of fourth harmonic
fi5=5/T;//frequency of fifth harmonic
disp(fi1,'value of first harmonic=');
disp(fi2,'value of first harmonic=');
disp(fi3,'value of second harmonic=');
disp(fi4,'value of first harmonic=');
disp(fi5,'value of third harmonic=');
//part b
A=20;
n=1;
Vn1=A/(n*%pi);
disp(Vn1,'first harmonic voltage');
n=2;
Vn2=A/(n*%pi);
disp(Vn2,'second harmonic voltage');
n=3;
Vn3=A/(n*%pi);
disp(Vn3,'second harmonic voltage');
n=4;
Vn4=A/(n*%pi);
disp(Vn4,'first harmonic voltage');
n=5;
Vn5=A/(n*%pi);
disp(Vn5,'third harmonic voltage');
f=[fi1 fi2 fi3 fi4 fi5];
Vn=[Vn1 Vn2 Vn3 Vn4 Vn5];
bar(f,Vn)





