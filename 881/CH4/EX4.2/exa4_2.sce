clc;
//Example 4.2
//Page no 123


//solution

Fc=500; //kHz
Fm=10; //kHz
Ec=20;
Em=7.5;

disp("(a)The upper and lower side frequencies are simply the sum and difference frequencies, respectively ");

fu=Fc+Fm;
fl=Fc-Fm;

disp('kHz',fl,'kHz and Flsf = ',fu,"Fusf = ");

//(b)

disp("(b)The modulation coefficient is determined from equation 4-1 (refer pgno 120)");

m=Em/Ec;

disp(m,"m = ");

disp("Percent modulation is determine from equation 4-2 (refer pgno 120)");

M=100*m;

disp('%',M,"M = ");
//(c)

disp("(c)The peak amplitude of the modulated carrier and the upper and lower side frequencies is ");

eu=((m*Ec)/2);

disp('Vp',eu,"Eusf(modulated) = ");

//(d)

disp("(d)The maximum and minimum amplitude of the envelope are, ");

Vm=Ec+Em;
vm=Ec-Em;

disp('Vp',vm,'Vp and Vmin = ',Vm,"Vmax = ");
