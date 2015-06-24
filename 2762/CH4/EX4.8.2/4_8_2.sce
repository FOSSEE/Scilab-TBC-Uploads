//Transport Processes and Seperation Process Principles
//Chapter 4
//Example 4.8-2
//Principles of Steady State Heat Transfer
//given data
//si units
Tsat=89.44;
Tw=87.8;
Tf=(Tsat+Tw)/2;
D=0.0254;
hf=2657.8-374.6;//latent heat using steam tables
rho1=60.3*16.018;//density of condensed steam
rhov=0.391;//density of ateam at 10 psia
mu1=3.24e-4;
kt=0.675;
L=0.305;
Tsat=193;//in K
delT=3.33;
g=9.806;
//assuming laminar film
Nu=1.13*(((rho1^2)*g*hf*1000*(L^3)/(mu1*kt*(delT)))^(0.25));
h=Nu*(kt/L);
A=%pi*D*L;
q=h*A*(Tsat-Tw);
m=q/hf;
kteng=0.390;//
Leng=1;//in english units
heng=Nu*(kteng/Leng);
Deng=1/12;
Aeng=%pi*Deng*Leng;
mprintf("avg HT coefficient= %f W/m2 K in si units",h)
mprintf("avg HT coefficient= %f btu/h ft2 F in english units",heng)
