clear
clc

//Example 17.1
disp('Example 17.1')

//In this solution we assume that a sampled signal is given to us at a very fast
//sampling rate and then we resample from it for our computations
//This depicts how data is in practical situations. 
//Since computers are digital data is always discrete
//A more kiddish way of writing this code would have been to make a function
//which takes time as input and gives signal value as output ie generate a 
//continuous signal definition. Then no matter what our sampling time is 
//we can always get the desired values by calling the function say func(Ts*k)
//where Ts denotes sampling time and k is the index no.(ie deltaT*k)
//In principle this will also work fine and will reduce the length of the code
//but this will not lead to learning for coding in practical situations

Ts=0.001 //sampling time for analog
t=0:Ts:5;
n=length(t);
square_base=0.5*squarewave((t-0.5)*2*%pi/3)+0.5;
ym=square_base+0.25*sin(t*2*%pi*9);
subplot(2,2,1)
plot(t,[square_base' ym'])
xtitle('Fig 17.6 (a)','Time(min)','Output');
 

//Analog Filter
tauf1=0.1;tauf2=0.4;
s=%s;
F1=syslin('c',1/(tauf1*s+1));
F2=syslin('c',1/(tauf2*s+1));
yf1=csim(ym,t,F1);
yf2=csim(ym,t,F2);
subplot(2,2,2);
plot(t,[yf1' yf2' square_base'])
legend("$\tau_F=0.1\ min$","$\tau_F=0.4\ min$",position=3);
xtitle('Fig 17.6 (b)','Time(min)','Output');
 
 //Note that analog filtering can also be achieved by perfect sampling in EWMA digital filter
 //Since Exponentially weighted digital filter is an exact discretization of analog
 //filter if we take Ts=0.001 ie the perfect sampling of data we get identical answers
 //from digital or analog filter. You can try this by chaning Ts1 or Ts2 to 0.001

//Digital filtering
Ts1=0.05;Ts2=0.1;
alpha1=exp(-Ts1/tauf1);
alpha2=exp(-Ts2/tauf1);
samples1=1:Ts1/Ts:n;
samples2=1:Ts2/Ts:n;
yf1=zeros(length(samples1),1);
yf2=zeros(length(samples2),1);

for k=1:length(samples1)-1
    yf1(k+1)=alpha1*yf1(k)+(1-alpha1)*ym(samples1(k));
end
for k=1:length(samples2)-1
    yf2(k+1)=alpha2*yf2(k)+(1-alpha2)*ym(samples2(k));
end

subplot(2,2,3);
plot(t(samples1)',[yf1],color='blue');
plot(t(samples2)',yf2,color='red');
plot(t,square_base,color='black');
legend("$\Delta t=0.05 \ min$","$\Delta t=0.1\  min$",position=3);
xtitle('Fig 17.6 (c)','Time(min)','Output');
 


//Moving Filter
N1=3;
N2=7;
yf1=zeros(1,length(samples1))
yf2=zeros(1,length(samples1))
for k=N1+1:length(samples1)
    yf1(k)=yf1(k-1)+1/N1*(ym(samples1(k))-ym(samples1(k-N1)));
end
for k=N2+1:length(samples1)
    yf2(k)=yf2(k-1)+1/N2*(ym(samples1(k))-ym(samples1(k-N2)));
end
//for k=N2+1:n
//    yf2(k)=yf2(k-1)+1/N2*(ym(k)-ym(k-N2));
//end
subplot(2,2,4);
plot(t(samples1),[yf1' yf2'])
plot(t,square_base,color='black');
legend("$N^*=3$","$N^*=7$",position=4);
xtitle('Fig 17.6 (d)','Time(min)','Output');
 


//Now for the gaussian noise
scf();
Ts=0.001 //sampling time for analog
t=0:Ts:5;
n=length(t);
square_base=0.5*squarewave((t-0.5)*2*%pi/3)+0.5;
ym=square_base+grand(1,length(t),"nor", 0, sqrt(0.1));//0.1 is for setting variance=0.1
subplot(2,2,1)
plot(t,[square_base' ym'])
xtitle('Fig 17.6 (a)','Time(min)','Output');
 

//Analog Filter
tauf1=0.1;tauf2=0.4;
s=%s;
F1=syslin('c',1/(tauf1*s+1));
F2=syslin('c',1/(tauf2*s+1));
yf1=csim(ym,t,F1);
yf2=csim(ym,t,F2);
subplot(2,2,2);
plot(t,[yf1' yf2' square_base'])
legend("$\tau_F=0.1\ min$","$\tau_F=0.4\ min$",position=3);
xtitle('Fig 17.6 (b)','Time(min)','Output');
 

//Digital filtering
Ts1=0.05;Ts2=0.1;
alpha1=exp(-Ts1/tauf1);
alpha2=exp(-Ts2/tauf1);
samples1=1:Ts1/Ts:n;
samples2=1:Ts2/Ts:n;
yf1=zeros(length(samples1),1);
yf2=zeros(length(samples2),1);

for k=1:length(samples1)-1
    yf1(k+1)=alpha1*yf1(k)+(1-alpha1)*ym(samples1(k));
end
for k=1:length(samples2)-1
    yf2(k+1)=alpha2*yf2(k)+(1-alpha2)*ym(samples2(k));
end

subplot(2,2,3);
plot(t(samples1)',[yf1],color='blue');
plot(t(samples2)',yf2,color='red');
plot(t,square_base,color='black');
legend("$\Delta t=0.05 \ min$","$\Delta t=0.1\  min$",position=3);
xtitle('Fig 17.6 (c)','Time(min)','Output');
 


//Moving Filter
N1=3;
N2=7;
yf1=zeros(1,length(samples1))
yf2=zeros(1,length(samples1))
for k=N1+1:length(samples1)
    yf1(k)=yf1(k-1)+1/N1*(ym(samples1(k))-ym(samples1(k-N1)));
end
for k=N2+1:length(samples1)
    yf2(k)=yf2(k-1)+1/N2*(ym(samples1(k))-ym(samples1(k-N2)));
end
//for k=N2+1:n
//    yf2(k)=yf2(k-1)+1/N2*(ym(k)-ym(k-N2));
//end
subplot(2,2,4);
plot(t(samples1),[yf1' yf2'])
plot(t,square_base,color='black');
legend("$N^*=3$","$N^*=7$",position=4);
xtitle('Fig 17.6 (d)','Time(min)','Output');
 


mprintf("Please note that for guassian noise\n results...
    will be different from book owing to randomness\n...
    we do not know the seed for the random noise")

