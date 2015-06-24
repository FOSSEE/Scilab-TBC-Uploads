Ti = 2000;
Te = 450;
T0 = 300;
Q1_dot = 100e03; // in kW
cpg = 1.1;
wg = Q1_dot/(cpg*(Ti-Te));
af1 = wg*cpg*T0*((Ti/T0)-1-log(Ti/T0));
af2 = wg*cpg*T0*((Te/T0)-1-log(Te/T0));
afi = af1-af2;
h1 = 2801; h3 = 169; h4 = 172.8; h2 = 1890.2;
s1 = 6.068; s2 = s1; s3 = 0.576; s4 = s3;
Wt = h1-h2;
Wp = h4-h3;
Q1 = h1-h4;
Q2 = h2-h3;
Wnet = Wt-Wp;
ws = Q1_dot/2628;
afu = 38*(h1-h4-T0*(s1-s3));
I_dot = afi-afu;
Wnet_dot = ws*Wnet;
afc = ws*(h2-h3-T0*(s2-s3));
n2 = 100*Wnet_dot/af1;
disp("%",n2,"The second law efficiency is")