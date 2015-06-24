//calculates//
s=%s;
sys1=syslin('c',(s+3)/s);
syms u rp k H RL;
num2=u*RL*s*(s+2);
den2=(rp+RL)*(s+3);
sys2=num2/den2;
num3=k;
den3=s+2;
sys3=num3/den3;
sys=sys1*sys2*sys3;
disp(sys,"G(s)=");
RL=10*10^3;
rp=4*10^3;
sys=eval(sys)
sys=float(sys)
disp(sys,"sys=");
disp(H,"H(s)");
M=sys/.H  //G(s)/1+G(s)H(S)
M=simple(M)
S=(diff(M,u))*(u/M);
S=simple(S);
disp(S,"system sensitivity due to variation of u=");
H=0.3;
u=12;
S=eval(S)  //---------eq 1
S=0.04;
k=((7/S)-7)/18 ; //from eq 1
disp(k,"K=")
