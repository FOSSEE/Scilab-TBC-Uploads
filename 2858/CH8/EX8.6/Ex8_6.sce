//example 8.6
clc; funcprot(0);
Sv=2;
Sh=3;
w=3/12;
fy=35000*144;
FSb=3;
pi=%pi;
phi=36*pi/180;
Gamma1=105;
H=30;
t=Gamma1*H*Sv*Sh*FSb/w/fy*(tan(pi/4-phi/2))^2;
t=t*12;
disp(t,"thiskness in inches");
t=t+0.001*50;
disp("so take thickness=0.2 inches");
//for tie length
z=[5,10,15,20,25,30];
TL=[38.45, 35.89, 33.34, 30.79, 28.25, 25.7];//tie length
printf("z(ft)\t Tie Length (ft)\n");
for i=1:6
    printf("%.2f\t %.2f\n", z(i),TL(i))
end
disp("use tie length=40ft")
//check for over turning

z=30/3;
x1=20;
L=40;
Ka=0.26;
Pa=1/2*Gamma1*Ka*H^2;
W1=Gamma1*H*L;
FSO=W1*x1/(Pa*z);
disp(FSO,"factor of safety is");
disp("since FS>3 structure is safe")
//check for sliding
k=2/3;
Pa=12285;
FSS=W1*tan(k*phi)/Pa;
if FSS>3 then
    printf("safe in sliding with FS=%.2f\n",FSS)
end
//check for bearing
Mr=126000*20;
Mo=12285*10;
V=126000;
e=L/2-Mr/V+Mo/V;
L1=L-2*e;//Ldash
c2=1000;
Nc=25.8;
Gamma2=110;
Ny=16.72;
qult=c2*Nc+1/2*Gamma2*L1*Ny
sigma0=Gamma1*H;
FSB=qult/sigma0;
if FSB>5 then
    printf("safe in bearing with FS=%.2f\n\n",FSB)
end

