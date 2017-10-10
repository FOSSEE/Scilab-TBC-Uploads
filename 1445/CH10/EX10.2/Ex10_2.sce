//CHAPTER 10- THREE-PHASE INDUCTION MACHINES
//Example 2

clc;
disp("CHAPTER 10");
disp("EXAMPLE 2");

//VARIABLE INITIALIZATION
P=6;                           //number of poles
f1=60;                         //stator frequency in Hertz
N_r1=1140;                     //in rpm

//SOLUTION
N_s=(120*f1)/P;                //synchronous speed
s1=(N_s-N_r1)/N_s;             //slip at full load

//solution (a)
N_r2=0;                        //rotor speed at standstill is zero
s2=(N_s-N_r2)/N_s;
disp(sprintf("(a) At standstill, the slip is %f %%",s2*100));
if(s2>1)
disp("Since the slip is greater than 100%, the motor operates as brake");
end;
if(s2<0)
disp("Since the slip is negative, the motor operates as generator");
end;
f2=s2*f1;
disp(sprintf("And the frequency of rotor current is %d Hz",f2));
if(f2<0)
disp("Since frequency is negative, phase sequence of voltage induced in rotor winding is reversed");
end;

//solution (b) 
N_r3=500;
s3=(N_s-N_r3)/N_s;
disp(sprintf("(b) At %d rpm, the slip is %f %%",N_r3,s3*100));
if(s3>1)
disp("Since the slip is greater than 100%, the motor operates as brake");
end;
if(s3<0)
disp("Since the slip is negative, the motor operates as generator");
end;
f3=s3*f1;
disp(sprintf("And the frequency is %d Hz",f3));
if(f3<0)
disp("Since frequency is negative, phase sequence of voltage induced in rotor winding is reversed");
end;

//solution (c)
N_r4=500;
s4=(N_s+N_r4)/N_s;              //as motor runs in opposite direction  
disp(sprintf("(c) At %d rpm, the slip is %f %%",N_r4,s4*100));
if(s4>1)
disp("Since the slip is greater than 100%, the motor operates as brake");
end;
if(s4<0)
disp("Since the slip is negative, the motor operates as generator");
end;
f4=s4*f1;
disp(sprintf("And the frequency is %d Hz",f4));
if(f4<0)
disp("Since frequency is negative, phase sequence of voltage induced in rotor winding is reversed");
end;

//solution (d)
N_r5=2000;
s5=(N_s-N_r5)/N_s;
disp(sprintf("(d) At %d rpm, the slip is %f %%",N_r5,s5*100));
if(s5>1)
disp("Since the slip is greater than 100%, the motor operates as brake");
end;
if(s5<0)
disp("Since the slip is negative, the motor operates as generator");
end;
f5=s5*f1;
disp(sprintf("And the frequency is %d Hz",f5));
if(f5<0)
disp("Since frequency is negative, phase sequence of voltage induced in rotor winding is reversed");
end;

//END
