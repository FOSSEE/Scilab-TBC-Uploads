//Exa 4.5
clc;clear;close;
format('v',6);
I=100;//A///Current
V=11;//kV
Xs=4;//ohm/phase
f=50;//Hz
pf=0.8;//Power factor Lagging
//Calculation
theta=acosd(pf);//degree
disp("Part(a)");
E=V*1000/sqrt(3)+I*(cosd(theta)-%i*sind(theta))*%i*Xs;//V
del=atand(imag(E)/real(E));//degree
E=abs(E);//V/phase
disp(E,"Open circuit phase emf(V/phase)");
disp(del,"Angle delta(degree)");
disp("Part(b)");
del_dash=10+del;//degree
P_by_V=E*sind(del_dash)/Xs;//per phase
//P=V*I*cos_fi
I_cos_fi=P_by_V;
//V*1000/sqrt(3)+I*(cos_fi-%i*sin_fi)*%i*Xs=E
I_sin_fi={sqrt(E^2-(4*I_cos_fi^2))-V*1000/sqrt(3)}/4;
tan_fi=I_sin_fi/I_cos_fi;
fi=atand(tan_fi);//degree
I=I_cos_fi/cosd(fi);//A
disp(I,"New load current(A)");
pf=cosd(fi);//lagging power factor
disp(pf,"Its power factor(lagging)");
disp("Part(c)");
pf1=0.8;///original power factor
Idash=I*pf/pf1;//Current
disp(Idash,"New value of load current(A)");
//Answer is slightly differ because of accuracy in calculations.
