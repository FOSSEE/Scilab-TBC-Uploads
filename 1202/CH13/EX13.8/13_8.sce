clear
clc

//Example 13.8
disp('Example 13.8')


s = %s;
num = 4;
den = (5*s+1);
delay=1;
w = 0.001:0.002:10*%pi;
LF = "loglog" // Warning: Change this as necessary

Gv=2;Gm=0.25;

Ku=4.25;Pu=2*%pi/1.69;

//Ziegler Nichols
Kc1=0.6*Ku;taui1=Pu/2;tauD1=Pu/8;
//Tyreus Luyben
Kc2=0.45*Ku;taui2=Pu*2.2;tauD2=Pu/6.3;

mprintf('        Kc          tauI        tauD')
mprintf('\nZN   %f    %f      %f',Kc1,taui1,tauD1)
mprintf('\nTL   %f    %f      %f',Kc2,taui2,tauD2)

Gc_ZN=Kc1*(1+1/taui1/s+s*tauD1/(0.1*s*tauD1+1));
Gc_TL=Kc2*(1+1/taui2/s+s*tauD2/(0.1*s*tauD2+1)); //Filtered Controllers with filter constant as 0.1

G1 = num/den*Gc_ZN*Gm*Gv;
G1m = horner(G1,%i*w); //G1m denotes magnitude
Abs_G1m=abs(G1m)
G1p = phasemag(G1m)-delay*w*180/%pi; //G1p denotes phase


G2 = num/den*Gc_TL*Gm*Gv;
G2m = horner(G2,%i*w); //G1m denotes magnitude
Abs_G2m=abs(G2m);
G2p = phasemag(G2m)-delay*w*180/%pi; //G1p denotes phase

   xset('window',0); 
   subplot(2,1,1)
   plot2d(w,Abs_G1m,logflag="ll",style = 1,rect=[0.01,0.1,10,1000]);
   plot2d(w,Abs_G2m,logflag="ll",style = 2,rect=[0.01,0.1,10,1000]);
   legend("Ziegler-Nichols","Tyreus Luyben")
   xgrid();
   xtitle('Loglog','','Magnitude');   
   subplot(2,1,2)
   plot2d1(w,G1p,logflag="ln",style = 1,rect=[0.01,-300,10,-50]);
   plot2d1(w,G2p,logflag="ln",style = 2,rect=[0.01,-300,10,-50]);
//      legend("Ziegler-Nichols","Tyreus Luyben")
   xgrid();
   xtitle('w(rad/sec)','','Phase(deg)');
   
//G_ZN=syslin('c',G1);
//G_ZN=iodelay(G_ZN,delay);
//G_TS=syslin('c',G2);
//G_TS=iodelay(G_TS,delay);
//scf();nyquist(G_TS,%f)
//[gm_ZN,fr_ZN]=g_margin(G_ZN);[gm_TS,fr_TS]=g_margin(G_TS);
//[pm_ZN,fr_ZN_p]=p_margin(G_ZN);[pm_ZN,fr_ZN_p]=p_margin(G_TS);
//g_maring and p_margin do not support iodelay toolbox, hence we 
//cannot use these so we try a workaround

//We can find w for which magnitude(AR) is 1 and 
//and calculate phase corresponding to it which gives us phase margin
//Also we can find crossover frequency and thus find Gain Margin

    indices1=find(abs(Abs_G1m-1)<0.01) //We find those values of indices of Abs_G1m for which it is almost 1
    indices2=find(abs(Abs_G2m-1)<0.01)
    //size(indices)
    PM1=mean(G1p(indices1))+180
    PM2=mean(G2p(indices2))+180
    
    indices1_p=find(abs(G1p+180)<0.05) //We find those values of indices of G1p for which it is almost -180
    indices2_p=find(abs(G2p+180)<0.05)
    //size(indices)
    GM1=1/mean(Abs_G1m(indices1_p))
    GM2=1/mean(Abs_G2m(indices2_p))
    
    wc1=mean(w(indices1_p));    
    wc2=mean(w(indices2_p));


mprintf('\n\n\n        GM          PM       wc')
mprintf('\nZN   %f    %f      %f',GM1,PM1,wc1)
mprintf('\nTL   %f    %f      %f\n',GM2,PM2,wc2)

theta=PM2*%pi/0.79/180;
disp(theta,'deltatheta(min)=')
