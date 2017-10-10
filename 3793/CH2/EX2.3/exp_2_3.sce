clear;
clc;
 p=50; //power transmits in MW
 pf=0.8; //power factor lagging
 va=132 //actual voltage in kV
 v=132; //KV base
 m=100; // MVA base
 z=complex(40,100); // transmision impedence
 //calculate pu values
 zb=(v^2)/m; //impedence base
 i=(m*1000)/(sqrt(3)*va); //base current in KA
 s=p/(pf*m);
 ppu=p/m;
 q=(((p/pf)*0.6)/m);
 mprintf(" complex power pu= %.3f , active power pu= %.3f , reactive power pu=%.3f \n",s,ppu,q);
 vpu=va/v;
 mprintf(" kV pu= %.3f\n",vpu);
 ia=(p*1000)/(sqrt(3)*va*pf);
 ipu=ia/i;
 mprintf(" current pu=%.3f \n",ipu);
 za=sqrt(((real(z))^2) + ((imag(z))^2));
 zpu=za/zb;
 rpu=(real(z))/zb;
 xpu=(imag(z))/zb;
 mprintf(" Impedence pu= %.3f , resistance pu= %.3f , reactance pu=%.3f ",zpu,rpu,xpu);
 
