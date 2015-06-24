clc
//ex5.14
V_1=10^3*2.2*sqrt(2)*complex(cos(0),sin(0));
V_2=10^3*2*sqrt(2)*complex(cos(-%pi/18),sin(-%pi/18));
//writing matrix form of mesh current equaions obtained by KVL
Z=[5+3*%i+50*complex(cos(-%pi/18),sin(-%pi/18)),-50*complex(cos(-%pi/18),sin(-%pi/18));-50*complex(cos(-%pi/18),sin(-%pi/18)),4+%i+50*complex(cos(-%pi/18),sin(-%pi/18))];      //coefficient matrix
V=[2200*sqrt(2);-2000*sqrt(2)*complex(cos(-%pi/18),sin(-%pi/18))];      //voltage matrix
I=Z\V;      //current matrix
S_1=(1/2)*V_1*((I(1,:))');      //complex power
P_1=real(S_1);      //power
Q_1=imag(S_1);      //reactive power
printf(" All the values in the textbook are approximated hence the values in this code differ from those of Textbook")
disp(P_1,'real power supplied by V1 in watts')
disp(Q_1,'reactive power supplied by V1 in VARs')
