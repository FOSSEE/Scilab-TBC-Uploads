//The concept of multistage Decimation
//(a)Single stage decimator
Sin=48;Sout=4;
fp=1.8;
fs=Sout-fp;
FT=(fs-fp)/Sin;
disp('By using single stage the total filter length is:')  
L=4/FT
//(b)Two-stage decimator
Sin=[48 12];
D=[4 3];//decimating factors
Sout=[12 4];
fp=[1.8 1.8];
fs=Sout-fp;
L1=4*Sin./(fs-fp);
L=0;
for i=1:length(L1)
    L=L+L1(i);
end
disp('By using 2 stage decimator filter length is:")
ceil(L)
//3 stage decimator with D1=2;D2=3;D3=2
Sin=[48 24 8];
D=[2 3 2];
Sout=[24 8 4];
fp=[1.8 1.8 1.8];
fs=Sout-fp;
L2=4*Sin./(fs-fp);L=0;
for i=1:length(L2)
    L=L+L2(i);
end
disp('By using 3 stage decimator filter length is:")
ceil(L)
//3 stage decimator with I1=2;I2=3;I3=2
Sin=[48 24 12];
D=[2 2 3];
Sout=[24 12 4];
fp=[1.8 1.8 1.8];
fs=Sout-fp;
L3=4*Sin./(fs-fp);L=0;
for i=1:length(L3)
    L=L+L3(i);
end
disp('By using 3 stage decimator filter length is:")
ceil(L)
