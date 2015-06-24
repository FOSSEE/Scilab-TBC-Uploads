clc
n=10^15
disp("n = "+string(n)+"cm^-3") //initializing value of concentration of electrons/cm^3.
no=10^10
disp("no = "+string(no)+"cm^-3") //initializing value of intrinsic concentration of electron.
t=10^-6
disp("t = "+string(t)+"s") //initializing value of carrier lifetime.
c=1*10^14
disp("Excess electron concentration  = "+string(c)+"cm^-3") //initializing value of excess electrons concentration.
R=(c/t)
disp("electron hole recombination,R=(c/t))="+string(R)+" /cm^3s")//calculation
