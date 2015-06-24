clc;
//Example 9.2
//Page no 339

//solution

fm=49;
fs=51;
fb=2; //nyquist rate


//(a)
disp("(a)The peak frequency deviation is determine from equation 9-14(refer pgno 338)");

df=(fs-fm)/2;

disp('kHz',df,"df = ");

//(b)

disp("(b)The minimum bandwidth is determined from equation 9-15(refer pgno 339)");

B=2*(df+fb);

disp('kHz',B,"B = ");

//(c)

disp("(c)For FSK, N=1 and the baud rate is determined from equation 9-11 as ");

n=1;

baud=fb*10^3/n;

disp(baud,"baud = ");
