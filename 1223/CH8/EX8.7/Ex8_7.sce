clear;
clc;
//Example 8.7
Vdd=10;
Rl=20;
K=0.2;
Vt=1;
vo=5;
iL=vo/20;
printf('\niL=%.2f A\n',iL)
Idq=0.05;
//Idq=K*(Vbb/2-Vt)
Vbb=(sqrt(Idq/K)+1)*2;
printf('\nVbb=%.2f V\n',Vbb)
iD=iL;
Vgsn=sqrt(iD/K)+Vt;
printf('\nVgsn=%.2f V\n',Vgsn)
Vsgp=Vbb-Vgsn;
printf('\nVsgp=%.2f V\n',Vsgp)
vi=vo+Vgsn-Vbb/2;
printf('\ninput voltage=%.2f V\n',vi)
