clc
Na=1*10^16
disp("Na = "+string(Na)+"cm^3") //initializing value of acceptor concentration.
Nd=5*10^16
disp("Nd = "+string(Nd)+"cm^3") //initializing value of donor concentration .
no=1.5*10^10
disp("no = "+string(no)+"cm^-3") //initializing value of intrinsic concentration.
Dn=25
disp("Dn = "+string(Dn)+"cm^2/sec") //initializing value of diffusion cofficient on the P side.
Dp=10
disp("Dp = "+string(Dp)+"cm^2/sec") //initializing value of diffusion cofficient on the N side.
tp=5*10^-7
disp("tn = "+string(tp)+"s") //initializing value of hole lifetime.
tn=5*10^-7
disp("tp = "+string(tn)+"s") //initializing value of electron lifetime.
e=1.6*10^-19
disp("e = "+string(e)+"columns") //initializing value of charge of electrons.
Pno=(no^2/Nd)
disp("Pno=(no^2/Nd))="+string(Pno)+"cm^-3")//calculation.
Npo=(no^2/Na)
disp("Npo=(no^2/Na))="+string(Npo)+"cm^-3")//calculation.
Lp=(sqrt(Dp*tp))
disp("Lp=(sqrt(Dp*tp)))="+string(Lp)+"cm")//calculation.
Ln=(sqrt(Dn*tn))
disp("Ln=(sqrt(Dn*tn)))="+string(Ln)+"cm")//calculation.
Jo=((e*((Dp*Pno/(Lp))+(Dn*Npo)/(Ln))))
disp("Jo=((e*((Dp*Pno/(Lp))+(Dn*Npo)/(Ln))))="+string(Jo)+" A/cm^2")//calculation.
