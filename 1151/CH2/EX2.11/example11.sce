printf("the second order control system has  transfer function Q(s)/T(s)=1/(J*s^2+f*s+k)");
printf("given T(s)= 10/s");
printf("Q(s)=1/(s*(J*s^2+f*s+k)");
printf("characterstic equation of the given system is J*s^2+f*s+k =0");
printf("compare it with the standard second order characterstic equation s^2+2*d*w*s+w^2=0");
k=10/0.5; 
d1=log(0.06);
d=sqrt(d1^2/(d1^2+%pi^2));
w=%pi/sqrt(1-d^2);
j=k/w^2;
f=2*d*w*j;
disp(d,"damping ratio=");
disp(w,"undamped natural frequency(in rad/sec)=");
disp(k,"value of K=");
disp(j,"value of J=");
disp(f,"value of f=");

