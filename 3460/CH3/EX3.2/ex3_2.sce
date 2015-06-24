
//part a
T=2e-6;//given time
fi1=1/T;//frequency of first harmonic
fi3=3/T;//frequency of second harmonic
fi5=5/T;//frequency of third harmonic
disp(fi1,'value of first odd harmonic=');
disp(fi3,'value of second odd harmonic=');
disp(fi5,'value of third odd harmonic=');
//part b
A=10;
n=1;
Vn1=(2*A)/(n*%pi);
disp(Vn1,'first harmonic voltage');
n=3;
Vn3=(2*A)/(n*%pi);
disp(Vn3,'second harmonic voltage');
n=5;
Vn5=(2*A)/(n*%pi);
disp(Vn5,'third harmonic voltage');
f=[fi1 fi3 fi5]
Vn=[Vn1 Vn3 Vn5];
bar(f,Vn)





