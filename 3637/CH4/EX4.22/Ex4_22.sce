//problem 22 pagenumber 4.47
//given
n=10;format(6);
vfs=10.24;//volt
distortion=56;//dB
//determine ENOB SNRmax
q=vfs/(2^n*sqrt(12));
snrmax=(6.02*n+1.76);//formula for SNRmax
disp('SNRmax = '+string(snrmax)+' dB');
format(2);
en=(distortion-1.76)/6.02;
disp('ENOB = '+string(en));//no unit



