//pagenumber 36 example 18
clear
na=1*10^16;//per cubic centimetre            correction in the book
ni=1.48*10^10;//per cubic centimetre
un=0.13*10^4;//centimetre square per velocity second
u=0.05*10^4;//centimetre square per velocity second
n=ni^2/na;
q=1/(1.6*10^-19*(un*n+(u*na)));
disp("resistivity   =   "+string((q))+"ohm centimetre");


