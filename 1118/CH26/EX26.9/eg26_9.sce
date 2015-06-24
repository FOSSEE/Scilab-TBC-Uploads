clear;
//clc();
s=15;
sa=complex(s,0);

s1=40;
sb1=complex(s1*0.6,s1*0.8);
sb=conj(sb1);

s2=25;
sc1=complex(s2*0.8,s2*0.6);
sc=conj(sc1);

st=sa + sb + sc;

t_kvar=sqrt((real(st)^2) + (imag(st)^2));
printf("The kVA is:%.2f kVA\n",t_kvar);

pf=real(st)/t_kvar;
printf("The power factor is:%.4f lagging\n",pf);

cap=-imag(st);
printf("The capacitance is:%.0f kVAr leading\n",cap);
