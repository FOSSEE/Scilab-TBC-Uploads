// to calculate fault currentin feeder lines,primary and secondary lines of receiving end transformers

clc;

r=60;        //kva rating of 3-ph common base
s=200;        //kva rating of 3ph transformer
//sending end
X_Tse=.06*r/s;    //.06= reactance of transformer based on its own rating
//in 2 kv feeder
V_B=2000/sqrt(3);    //line to neutral
I_B=r*1000/(sqrt(3)*2000);
Z_B=V_B/I_B;
X_feeder=0.7/Z_B;        //feeder reactance=0.7
//receiving end
X_Tre=0.0051;
X_tot=X_Tse+X_feeder+X_Tre;
V_se=20/20;
I_fc=V_se/X_tot;    //feeder current

I_f=I_fc*I_B;    disp(I_f,'current in 2kv feeder(A)');
I_t1=I_f/sqrt(3);    disp(I_t1,'current in 2kv winding of transformer(A)');
I_t2=I_t1*10;    disp(I_t2,'current in 200kv winding of transformer(A)');
I_l=I_t2*sqrt(3);    disp(I_l,'current at load terminals(A)');