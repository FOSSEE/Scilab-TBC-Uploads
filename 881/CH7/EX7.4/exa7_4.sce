clc;
//Example 7.4
//Page No 259

disp("Given:  An FM modulator with a peak frequency deviation df=10kHz, a modulating signal frequency fm=10kHz, Vc=10V and a 500kHz carrier. ");

//Solution

df=10;

fm=10;

n=3;

//(a)

disp("(a)Substituting into equation 7-22(refer pgno 251) ");

m=df/fm;

disp(m,"m = ");

disp("From Table 7.3")

B=2*(n*fm);

disp('kHz',B,"B = ");

//(b)

disp("(b)Substittuting into equation 7-34(refer pgno 259), the bandwidth is  ");

b=2*(df+fm);

disp('kHz',b,"B = ");

//(c)

disp("(c)The relative amplitudes of the carrier and side frequencies are, ");

disp("                      J0= 0.77x(10) = 7.7 V");

disp("                      J1= 0.44x(10) = 4.4 V");

disp("                      J2= 0.11x(10) = 1.1 V");

disp("                      J3= 0.02x(10) = 0.2 V");

disp("The output frequency spectrum for the Bessel approximation is shown in figure 7-7.");
