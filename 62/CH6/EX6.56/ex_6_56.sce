clc;
N=4;
n=-10:10;
x=[zeros(1,find(n==0)-1) rand(1,-find(n==0)+find(n==N)+1) zeros(1,length(n)-find(n==N))];
plot2d3(n,x)
nf=-5:0.5:5;
figure
subplot(2,1,1)
plot2d3(ceil(nf),x);
xtitle('f[n]','n')
subplot(2,1,2)
ng=nf-1/2;
plot2d3(ceil(ng),x);
xtitle('g[n]','n')
disp("from the graphs it is visible that f[n]=g[n]=0 outside 0<=n<=N/2-1");