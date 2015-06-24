clc
Ia=2*10^-3
disp("Ia = "+string(Ia)+" A") //initializing value of forward current of thyrsistor.
x=0.9
disp("(ap+an) = "+string(x)) //initializing value of sum of current gain of n,ptype semiconductor [value is get in by variable x,but represented on console window through ap +an].
a=0.45
disp("a = "+string(a)) //initializing value of current gain of both n,p type semiconductor (as it is assume that ap[current gain of n type semiconductor]=an[current gain of ptype semiconductor]in the question).
Ico=Ia*(1-(2*a))
disp("Ico=Ia*(1-(2*an))="+string(Ico)+" A")//calculation
y=1/2*Ico*((Ia)^-2)
disp("(da/dt)=1/2*Ico*((Ia)^-2))="+string(y)+" /A")//calculation

//The answer for (da/dt) after  doing calculation is provided wrong in the book.
