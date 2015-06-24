clear;
clc;
R=25000;
I_l1=.021;    //I_l=leakage current
I_l2=.025;
I_l3=.018;
I_l4=.016;
//V1=(I-I_l1)*R;
//V2=(I-I_l2)*R;
//V3=(I-I_l3)*R;
//V4=(I-I_l4)*R;
//V=V1+V2+V3+V4
V=10000;
I_l=I_l1+I_l2+I_l3+I_l4;
//after solving
I=((V/R)+I_l)/4;
R_c=40;
V1=(I-I_l1)*R;    printf("voltage across SCR1=%.0f V",V1);
V2=(I-I_l2)*R;    printf("\nvoltage across SCR2=%.0f V",V2);
V3=(I-I_l3)*R;    printf("\nvoltage across SCR3=%.0f V",V3);
V4=(I-I_l4)*R;    printf("\nvoltage across SCR4=%.0f V",V4);

I1=V1/R_c;    printf("\ndischarge current through SCR1=%.3f A",I1);
I2=V2/R_c;    printf("\ndischarge current through SCR2=%.3f A",I2);
I3=V3/R_c;    printf("\ndischarge current through SCR3=%.3f A",I3);
I4=V4/R_c;    printf("\ndischarge current through SCR4=%.3f A",I4);
