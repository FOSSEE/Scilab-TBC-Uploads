clc
Na=10^15
disp("Na = "+string(Na)+"cm^3") //initializing value of acceptor concentration.
Nd=10^15
disp("Nd = "+string(Nd)+"cm^3") //initializing value of donor concentration .
no=1.5*10^10
disp("no = "+string(no)+"cm^-3") //initializing value of intrinsic carrier concentration.
Dn=50
disp("Dn = "+string(Dn)+"cm^2/sec") //initializing value of built in voltage.
Dp=20
disp("Dp = "+string(Dp)+"cm^2/sec") //initializing value of applied reverse voltage.
tp=5*10^-7
disp("tn = "+string(tp)+"s") //initializing value of hole lifetime.
tn=5*10^-7
disp("tp = "+string(tn)+"s") //initializing value of electrons lifetime.
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
disp("Jo=((e*((Dp*Pno/(Lp))+(Dn*Npo)/(Ln))))="+string(Jo)+"A/cm^2")//calculation.
//the value of tp,tn provided in the question,is different than that provided in the solution.
//I have used the value ,provided in the solution(i.e.tp=tn=5*10^7)
