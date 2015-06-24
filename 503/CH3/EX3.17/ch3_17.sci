// To determine the rating and full load efficiency of autotransformer

clc;
//when used as transformer
v1=240;
v2=120;
r=12000;
I1=r/v1;
I2=r/v2;

//when connected as autotransformer
V1=240;
V2=v1+v2;
rr=I2*V2;            disp(rr,'rating of autotransformer(va)');

pf=1;
P_o=r*pf;            //output power
n=.962            //efficiency at upf
P_L=P_o*(1-n)/n;

pff=.85            //if pf=.85
Po=rr*pff;
nn=1/(1+P_L/Po);        disp(nn*100,'efficiency(%) at .85 pf is');