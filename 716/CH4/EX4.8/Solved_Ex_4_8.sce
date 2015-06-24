//Determine the trigonometric form of fourier series of Given Signal
clc;
clear;
T=8;//Defining Time Period
A=2;//Defining Amplitude

t=-T:0.01:T;
w0=2*%pi/T;

function x=f(t),x=(A/T*t).*(t>0 & t<T) ,endfunction  //given continuous signal
plot(t,f);
xlabel("time");
ylabel("x(t)");

//Check if Signal is even or odd
if(f(t)==f(-1*t))
    
        disp('even');
        disp('bn=0');
        function x=f(t),x=(A/T*t).*(t>0 & t<T) ,endfunction//redefining signal
        //Evaluation of a0 & an
        //Evaluation of a0:       
        a0=4*intg(0,T/2,f)/T;  //definite integral of 'f' from 0 to T/2
        disp(a0,'a0');

        //Evaluation of an:
        disp('due to convergence,for all even values of n,an=0');
        disp('for odd values of n,an values are=>');
        y0=a0/2+zeros(1,length(t));
        for n=1:2:15                 //changing the end value of n,we can get more numbers of an
        function xn=f1(t),xn=((A/T*t).*(t>0 & t<T)).*cos(n.*w0.*t) ,endfunction 
        an=4*intg(0,T/2,f1)/T;
        disp(n,'a');
        disp(an);
        y0=y0+an.*cos(n*w0.*t);
        xset('window',1);
        subplot(2,4,(n+1)/2);
        plot(t,y0);
        xtitle('signal x(t) for few harmonics','time t','x(t)');
        end
        
    else if(f(t)==(-1*f(-1*t)))
    
        disp('odd signal=>a0=an=0');
        function x=f(t),x=(A/T*t).*(t>0 & t<T) ,endfunction//redefining signal
        //Evaluation of bn=>
        y0=zeros(1,length(t));
        for n=1:1:8                  //changing the end value of n,we can get more numbers of bn
        function x=f1(t),x=((A/T*t).*(t>0 & t<T)).sin(n.*w0.*t) ,endfunction
        bn=4*intg(0,T/2,f1)/T;
        disp(n,'b');
        disp(bn);
        y0=y0+bn.*sin(w0.*n.*t);
        xset('window',1);
        subplot(2,4,n);
        plot(t,y0);
        xtitle('signal x(t) for few harmonics','time t','x(t)');
        end
    
    else
    
        disp('neiher even nor odd');
        function x=f(t),x=(A/T*t).*(t>0 & t<T) ,endfunction//redefining signal
        //Evaluation of a0,an & bn
        //Evaluation of a0 & an:
        a0=2*intg(0,T,f)/T;  //definite integral of 'f' from 0 to T/2
        disp(a0,'a0');
        disp('due to convergence,for all values of n,an=0');
        y1=a0/2;
            
        //Evaluation of bn=>
        y2=zeros(1,length(t));
        for n=1:1:8                  //changing the end value of n,we can get more numbers of bn
        function xn=f1(t),xn=((A/T*t).*(t>0 & t<T)).*sin(n.*w0.*t) ,endfunction
        bn=2*intg(0,T,f1)/T;
        disp(n,'b');
        disp(bn);
        y2=y2+bn.*sin(n.*w0.*t);
        xset('window',1);
        subplot(2,4,n);
        plot(t,y2);
        xtitle('signal x(t) for few harmonics','time t','x(t)*sin(n*w0*t)');
        end  
    end
    y0=y1+y2;
end

xset('window',2);
plot(t,y0);//x(t) signal till 8 harmonics
xtitle('signal x(t) for 8 harmonics','time t','x(t)');