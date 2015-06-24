//Write equation of modulated wave for (a) FM  (b) PM and when modulating frequency is changed to 2Khz 

fc = 25e+6;
fm = 400;
del = 1e+4;

wc = 2*%pi*fc;
wm = 2*%pi*fm;

mf = del/fm;

disp(wc, ' Equation of modulated wave in FM for case (a) is V =  4sin(  ')
disp(mf,' t +  ')
disp(wm, 'sin ')
disp('t (FM)')

disp(wc, ' Equation of modulated wave in PM for case (b) is V =  4sin(  ')
disp(mf,' t +  ')
disp(wm, 'sin ')
disp('t (PM)')

disp(wc, ' Equation of modulated wave in FM for case (c) is V =  4sin(  ')

disp(5*wm, 't + 5sin ')
disp('t (FM)')

disp(wc, ' Equation of modulated wave in PM for case (d) is V =  4sin(  ')
disp(mf,' t +  ')
disp(5*wm, 'sin ')
disp('t (PM)')