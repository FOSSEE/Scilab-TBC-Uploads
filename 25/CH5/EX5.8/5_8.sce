// example:-5.8,page no.-243.
//program to compute power gains.
f=10^10;Zs=20;Zl=30;Zo=50;
S=[-0.39+%i*0.225 0.009848+%i*-0.001736;2.02+0.356*%i -0.3464-%i*0.2];
taos=(Zs-Zo)/(Zs+Zo);
taol=(Zl-Zo)/(Zl+Zo);
taoin=S(1,1)+((S(1,2)*S(2,1)*taol)/(1-S(2,2)*taol));
taoout=S(2,2)+((S(1,2)*S(2,1)*taos)/(1-S(1,1)*taos));
Ga=(abs(S(2,1)^2)*(1-abs(taos)^2))/((abs(1-S(1,1)*taos)^2)*(1-abs(taoout)^2));
Gt=(abs(S(2,1)^2)*(1-abs(taos)^2)*(1-abs(taol)^2))/((abs(1-S(2,2)*taol)^2)*abs(1-taos*taoin)^2);
G=(abs(S(2,1)^2)*(1-abs(taol)^2))/((abs(1-S(2,2)*taol)^2)*(1-abs(taoin)^2));
disp(G,'actual power gain=')
disp(Ga,'the available power gain=')
disp(Gt,'the transducer power gain=')
disp(taoin,'reflection coefficient looking at port 1=')
disp(taoout,'reflection coefficient looking at port 2=')
disp(taos,'reflection coefficient at the source=')
disp(taol,'reflection coefficient at the load=')