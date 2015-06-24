//page no 665
// example 14.7
// we know k1P(m1)=k2P(m2), where k1 and k2 are the distances of the signals s1 and s2 resp.,hence k1+k2=d
clc;
Pm1=input("probability of symbol m1=");
Pm2=input("probability of symbol m2=");
//assume d=1
d=1;
E1=(((Pm1)*((d^2)/2))+((Pm2)*((d^2)/2)));
disp(+'units',E1,"mean energy of the first signal");
E2=Pm1*Pm2*(d^2);
disp(+'units',E2,"mean energy of the second signal");
if(E1==E2)
    disp("signals are equiprobable");
    end