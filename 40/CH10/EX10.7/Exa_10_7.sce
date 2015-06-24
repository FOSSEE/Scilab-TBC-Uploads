//The concept of multistage Interpolation
//(a)Single stage interpolator
Sin=4;Sout=48;
fp=1.8;
fs=Sin-fp;
FT=(fs-fp)/Sout;
disp('By using single stage the total filter length is:')  
L=4/FT
//(b)Two-stage interpolator
Sin=[4 12];
I=[3 4];//interpolating factors
Sout=[12 48];
fp=[1.8 1.8];
fs=Sin-fp;
L1=4*Sout./(fs-fp);
L=0;
for i=1:length(L1)
    L=L+L1(i);
end
disp('By using 2 stage interpolator filter length is:")
ceil(L)
//(c)3 stage interpolator with I1=2;I2=3;I3=2
Sin=[4 8 24];
I=[2 3 2];
Sout=[8 24 48];
fp=[1.8 1.8 1.8];
fs=Sin-fp;
L2=4*Sout./(fs-fp);L=0;
for i=1:length(L2)
    L=L+L2(i);
end
disp('By using 3 stage interpolator filter length is:")
ceil(L)
//(d)3 stage interpolator with I1=2;I2=3;I3=2
Sin=[4 12 24];
I=[3 2 2];
Sout=[12 24 48];
fp=[1.8 1.8 1.8];
fs=Sin-fp;
L3=4*Sout./(fs-fp);L=0;
for i=1:length(L3)
    L=L+L3(i);
end
disp('By using 2 stage interpolator filter length is:")
ceil(L)
