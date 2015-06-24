// to calculate voltage ratings,kva ratings and efficieny of autotransformer

clc;

AB=200;
BC=2000;
V_1=BC;        disp(V_1,'V_1(V)');
V_2=AB+BC;     disp(V_2,'V_2(V)');
r=20000;            //rating of transformer
I_2=r/AB;
I_1=I_2+10;
rr=V_2*I_2/1000;        //kva rating of autotransformer
disp(rr,'kva rating');
ri=V_1*(I_1-I_2)/1000;    //kva inductive
rc=rr-ri;
disp(ri,'kva transferred inductively');
disp(rc,'kva transferred conductively');
W_c=120;            //core loss
W_cu=300;            //cu loss
W_t=W_c+W_cu;        //total loss
pf=0.8;
W=V_2*I_2*pf;        //full load output
n=1-(W_t/W);
disp(n*100,'eff(%)');