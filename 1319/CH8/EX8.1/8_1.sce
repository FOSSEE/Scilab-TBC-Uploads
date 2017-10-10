//Find the percentage slip and poles of the motor

clc;
clear;

p=12;
n=500;
nlim=1440;
f=p*n/120;
c=1;

while(c>0) // Used to find out the poles of the motor nearest to the full load slip
    P=2*c;
    N=120*f/P;
    g=(5/100)*N;
    if((N-nlim)>(0.05*N))
        c=c+1;
    else
        c=0;
    end
end

slip=(N-nlim)*100/N;

printf('The Number of poles of the induction motor is %g \n',P)
printf('The percentage slip is %g percent \n',slip)


