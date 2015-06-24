//Page Number: 8.6
//Example 8.1

clc;
disp('Part a');
//(a)Given, u1=1W and u2=1mW
//Change to dBW and dBm
u1=1D-3;
u2=1;
//(i)470mW
a=470D-3;
y1=(10*log10(a/u1));
disp('dBm',y1);

y2=(10*log10(a/u2));
disp('dBW',y2);

//(ii)1W
b=1;
z1=(10*log10(b/u1));
disp('dBm',z1);

z2=(10*log10(b/u2));
disp('dBW',z2);

//(iii)100nW
c=100D-9;
x1=(10*log10(c/u1));
disp('dBm',x1);

x2=(10*log10(c/u2));
disp('dBW',x2);

disp('Part B');
//(b)Here u1=1W (for dBW)and u2=1mW (for dBm)
//Change to powers to watts
//(i)-20dBW
a=-20;
k1=u2*(10^(a/10));
disp('W',k1);


//(ii)47dBm
b=47;
k2=u1*(10^(b/10));
disp('W',k2);


//(ii)0dBm
c=0;
k3=u1*(10^(c/10));
disp('W',k3);


disp('Part C');
//(c)Given, channel loss=20dB and Pt=1W
l=-20;
PT=1;
PR=10^(l/10);
disp(PR,'W','Received Power',);

disp('Part D');
//(d)Given, channel loss=30dB when signal=3dB and overall loss=20dB
l1=-30;
s=-3;
l2=-20;
q=-l1-s-s+l2;
d1=10^(q/10);
disp('dB',q,'=');
disp(d1);

disp('Part E');
//(e)Given,
Si=0; //dBm
S1=1D-3*(10^(Si/10));
Ni=1D-7; //W

Osnr=S1/Ni;
Odb=(10*(log10(Osnr)));
disp('dB',Odb);
