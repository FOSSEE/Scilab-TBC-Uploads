//Chapter 9
//Example 9_7
//Page 216

clear;clc;

r=1.3;
d_acd=6;
d_bbd=d_acd;
d_ab=3;
d_bc=3;
d_adbd=d_bc;
d_aa=1.01*1e-2;
d_bb=d_aa;
d_adad=d_aa;
d_bdbd=d_aa;
d_bdb=d_aa;
d_ca=6;
d_cad=6;
d_cda=6;
d_cdad=6;

gmr=r*0.7788;
d_abd=sqrt(d_acd^2+d_ab^2);
d_adb=d_abd;
d_aad=sqrt(d_acd^2+(d_ab+d_bc)^2);
ds1=(d_aa*d_aad*d_adad*d_aad)^(1/4);
ds2=(d_bb*d_bbd*d_bdbd*d_bbd)^(1/4);
ds=(ds1*ds2*ds1)^(1/3);
dab=(d_ab*d_abd*d_adb*d_adbd)^(1/4);
dbc=dab;
dca=(d_ca*d_cad*d_cda*d_cdad)^(1/4);
dm=(dab*dbc*dca)^(1/3);
l=(1e-7)*2*log(dm/ds);

printf("GMR of conductor = %.2f cm \n\n", gmr);
printf("Distance a to b_dash = %.2f m \n", d_abd);
printf("Distance a to a_dash = %.2f m \n\n", d_aad);
printf("Ds1 = %.2f m \n", ds1);
printf("Ds2 = %.2f m \n", ds2);
printf("Ds = %.2f m \n\n", ds);
printf("Dab = %.2f m \n", dab);
printf("Dbc = %.2f m \n", dbc);
printf("Dca = %.2f m \n", dca);
printf("Dm = %.2f m \n\n", dm);
printf("Inductance per phase per metre length = %.2f mH \n\n",l*1e6);



