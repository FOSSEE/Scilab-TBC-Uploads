clc;
//Example 7.5
//Page No 260



//Solution

df=75; 

fm=15;

//(a)

disp("(a)The deviation ratio is found by substituting into equation 7-35(refer pgno), ");

DR=df/fm;

disp(DR,"DR = ");

disp("From Table 7.3");

B=2*(8*fm);

disp('kHz',B,"B = ");

//(b)

disp("(b)For an 37.5kHz frequency deviation and modulating signal frequency fm=7.5, the modulation index is, ");

m=37.5/7.5;

disp(m,"m = ");

disp("and the bandwidth is, ");

b=2*(8*7.5);

disp('kHz',b,"B = ");