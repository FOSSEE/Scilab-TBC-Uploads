clc;
//Example 3.1
//Page no 75



//Solution

fn=10*(10^6);
k=10;
c1=10;
c2=-5;

//(a)

disp("(a)Substituting into equation 3-6 and 3-7 (refer pgno 75) give us ");

df=k*(10*c1);

disp('Hz',round(df),"dF = ");

fo=fn+(round(df));

disp('MHz',fo/(10^6),"F0 = ");

//(b)

disp("(b)Again, substituting into equation 3-6 and 3-7 yields ");

dF=k*(10*c2);

disp('Hz',round(dF),"dF = ");

f1=fn+(round(dF));

disp('MHz',f1/(10^6),"F0 = ");
