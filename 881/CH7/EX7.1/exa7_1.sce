clc;
//Example 7.1
//Page No 253


//Solution

//(a)

K1=5; //kHz/V
Ap=2; //V
k1=2.5; //rad/V
fm=2; //kHz

disp("(a)The peak frequency deviation is simply the product of the deviation sensitivity and the peak amplitude of the modulation signal, ");

df=K1*Ap;

disp('kHz',df,"df = ");

disp("The modulation index is determined by substituting into equation 7-22(r)");

m=df/fm;

disp(m,"m = ");

//(b)

disp("The peak phase shift for a phase-modulation wave is the modulation index and is found by substituting into equation 7-15(refer pgno 250)");

m1=k1*Ap;

disp('rad',m1,"m = ");
