                           //EXAMPLE 2-95     PG NO-140
L=1.5;                   //INDUCTANCE
a=(2000*0.01);
R=L/(4*%pi*10^-7*a);              //RESISTANCE
disp('i)  Resistance (R) is    =  '+string (R) +'  ohm ');
N1=30;
N2=600;
M=(N1*N2)/R;
disp('ii)  M (M) is    =  '+string (M) +'  H ');
e=M*(10/0.01);
disp('iii) e (e) is    =  '+string (e) +'  V ');
