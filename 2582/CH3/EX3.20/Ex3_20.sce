//Ex 3.20
clc;clear;close;
format('v',6);
omegaBYomega0=[0 0.5 1 5 10 100];
//T=omega0/sqrt(omega0^2+omega^2);//Gain
for i=1:6
T(i)=1/sqrt(1^2+omegaBYomega0(i)^2);//Gain    
end
G=20*log10(T);//dB
A=-20*log10(T);//dB
fi=-atand(omegaBYomega0);//degree
disp("omega/omega0        T(j*omega)        (G(dB))        A(dB)        fi")
table=[omegaBYomega0' T G A fi'];
disp(table);
