//CHAPTER 10- THREE-PHASE INDUCTION MACHINES
//Example 13

disp("CHAPTER 10");
disp("EXAMPLE 13");

//VARIABLE INITIALIZATION
f=50;                          //in Hertz
N_r=1440;                      //full-load speed in Hertz

//SOLUTION

//solution (a)
function N=speed(pole);         
N=(120*f)/pole;
endfunction;

pole=2;
N=speed(pole);
if(N>N_r & N<2000)
P=pole;
N_s1=N;
disp(sprintf("(a) The number of poles is %d",P));
end;
pole=4;
N=speed(pole);                 
if(N>N_r & N<2000)
P=pole;
N_s1=N; 
disp(sprintf("(a) The number of poles is %d",P));
end;
pole=6;
N=speed(pole);
if(N>N_r & N<2000)
P=pole;
N_s1=N;
disp(sprintf("(a) The number of poles is %d",P));
end;

//solution (b)
s=(N_s1-N_r)/N_s1;
f_r=s*f;
disp(sprintf("(b) The slip is %f %% and rotor frequency is %d Hz",s*100,f_r));

//solution (c)
w1=(2*%pi*N_s1)/60;
disp(sprintf("(c(i)) The speed of stator field w.r.t. stator structure is %f rad/s",w1));
N_s2=N_s1-N_r;
w2=(2*%pi*N_s2)/60;
disp(sprintf("(c(ii)) The speed of stator field w.r.t. rotor structure is %f rad/s",w2));

//solution (d)
factor=(2*%pi)/60;             //converting factor from rpm to radian/second
N_r1=(120*f_r)/P;
disp(sprintf("(d(i)) The speed of rotor field w.r.t. rotor structure is %f rad/s",N_r1*factor));
N_r2=N_r+N_r1;
disp(sprintf("(d(ii)) The speed of rotor field w.r.t. stator structure is %f rad/s",N_r2*factor));
N_r3=N_s1-N_r2;
disp(sprintf("(d(iii)) The speed of rotor field w.r.t. stator structure is %d rad/s",N_r3));

//END
