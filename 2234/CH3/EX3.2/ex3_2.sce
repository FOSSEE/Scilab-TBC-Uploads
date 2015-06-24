clc;
f=80;     //focal length in cm
f1=20;    //focallength of first lens in cm
f2=(80/3);  //using (1/F)=(1/f1)+(1/f2)
P=(100/f);   //power in D
P1=100/20;    //power of first lens
P2=P1-P;    //power in D
disp(P2,"Power in D = ");  //displaying result