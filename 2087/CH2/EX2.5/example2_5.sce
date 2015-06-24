//example 2.5
//calculate 
//size of cut-back stream.
//time required for putting 37.5 mm depth of water
//average depth of water applied

clc;
//given
d=37.5//crop water requirement
W=1//furrow spacing
L=120//length of furrow
n=-0.49;
k=38;
Ttotal=143;//Total time of irrigation
A=[0 23 52 88 127]//given values of time of advance

for i=1:5//loop to find respective values of time of ponding
    B(i)=143-A(i);
end


for j=1:5//loop to find respective furrow infiltration
    C(j)=B(j)^(n)*k;
end


for K=1:4//loop to find respective average infiltration
   
   D(K)=(C(K)+C(K+1))/2;
end

E(1)=D(1);
for l=2:4//loop to determine cumulative infiltration
    E(l)=D(l)+E(l-1);
end
I=E(4);

T=(30*d*W*(n+1)/k)^(1/(n+1));
dav=((24.5*Ttotal)+(I*(T-Ttotal)))/L;
q=((120*37.5)-(24.5*143))/62;
T=round(T);
dav=round(dav*10)/10;
q=round(q*100)/100;
I=round(I*100)/100;
mprintf("Maximum size of cut-back stream=%f lpm.",I);
mprintf("\nMinimum size of cut-back stream=%f lpm.",q);
mprintf("\nTime required for putting 37.5mm depth of water=%f minutes.",T);
mprintf("\nAverage depth of water required=%f mm.",dav);
