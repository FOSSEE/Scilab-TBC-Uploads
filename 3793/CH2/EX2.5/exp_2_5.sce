clear;
clc;
 // parameters for generator g1
 mva1=20;
 kv1=6.6;
 x1=0.1; // in pu
 mvab=50; //mva base
 kv11=6.6;
 xg1=(x1*(((kv11^2)*mvab)/((kv1^2)*mva1)))
 mprintf("Xg1=%.3f pu\n",xg1);
 //parameters for generator g2
 mva2=25;
 kv2=11;
 x2=0.2; // in pu
 kv22=11;
xg2=(x2*(((kv22^2)*mvab)/((kv2^2)*mva2)))
 mprintf(" Xg2=%.3f pu\n",xg2); 
 //parameters for transformer t1
 mva3=25;
 kv3=132;
 x3=0.08; // in pu
 kv33=132;
xt3=(x3*(((kv33^2)*mvab)/((kv3^2)*mva3)))
 mprintf(" Xt3=%.3f pu\n",xt3);
 //parameters for transformer t2
 mva4=30;
 kv4=132;
 x4=0.10; // in pu
 kv44=132;
xt4=(x4*(((kv44^2)*mvab)/((kv4^2)*mva4)))
 mprintf(" Xt4=%.3f pu\n",xt4);
 //parameters for transmission line 
 kvb=132;
 Z=complex(30,120);
 Zpu=((Z*50))/(kvb^2);
 mprintf(" Zpu=%.3f + j%.3f\n",real(Zpu),imag(Zpu));
 //for load
 s1=(10*(complex(0.8,0.6)));
 s1pu=(s1/mvab);
 mprintf(" S1pu=%.3f + j%.3f\n",real(s1pu),imag(s1pu));
 s2=(25*(complex(0.9,0.436)));
 s2pu=(s2/mvab);
 mprintf(" S2pu=%.3f + j%.3f\n",real(s2pu),imag(s2pu));
 
 
 

