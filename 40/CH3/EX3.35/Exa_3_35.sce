//discrete periodic auto correlation and cross correlation
x=[2 5 0 4];
h=[3 1 -1 2];
x1=x(length(x):-1:1);
h1=h(length(h):-1:1);
rxhn=convol(x,h1)
rhxn=convol(x1,h)
rxxn=convol(x,x1)
rhhn=convol(h,h1)
y1=[rxhn,zeros(8:12)];
y2=[y1(1:4);y1(5:8);y1(9:12)];
y3=[rhxn,zeros(8:12)];
y4=[y3(1:4);y3(5:8);y3(9:12)];
y5=[rxxn,zeros(8:12)];
y6=[y5(1:4);y5(5:8);y5(9:12)];
y7=[rhhn,zeros(8:12)];
y8=[y7(1:4);y7(5:8);y7(9:12)];
rxhp=[0 0 0 0];
rhxp=[0 0 0 0];
rxxn=[0 0 0 0];
rhhp=[0 0 0 0];
for i=1:4
     for j=1:3
        rhxp(i)=rhxp(i)+y4(j,i);
        rxhp(i)=rxhp(i)+y2(j,i);
        rxxn(i)=rxxn(i)+y6(j,i);
        rhhp(i)=rhhp(i)+y8(j,i);
    end
end
rxhp
rhxp
rxxn
rhhp