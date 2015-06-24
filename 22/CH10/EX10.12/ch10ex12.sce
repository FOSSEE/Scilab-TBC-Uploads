A=[0 1;-1/6 5/6];
B=[0;1];
C=[-1 5];
D=0;
sys=syslin('d',A,B,C,D);
N=25;
x=ones(1,N+1);n=(0:N);
q0=[2;3];
[ y q]=csim('step',n,sys);
y=dsimul(sys,x);
plot2d3(y)