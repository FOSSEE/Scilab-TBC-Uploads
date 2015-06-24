clc;
//Example 7.2
//Page No 253


//Solution

wc=(6.28*10^6);
wm=(6.283*10^3);

disp("   Vpm(t)=A sin(wct + mp sin wmt) ","The mathematical expression for a phase-modulated wave is given as, ");

fc=wc/(2*%pi);

disp('MHz',round(fc/10^6),"(a)Carrier Frequency               fc = ");

fm=wm/(2*%pi);

disp('kHz',round(fm/10^3),"(b)Modulating Frequency             fm = ");
        
disp(10,"(c)Modulating index             mp = ");

disp('rad',10,"(d)Peak phase deviation             d0 = ");
