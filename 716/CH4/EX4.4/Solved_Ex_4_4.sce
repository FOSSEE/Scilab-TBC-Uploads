//Solved_Ex.4.4->Determine the Trigonometric form of Fourier Series of the Full Wave Rectified sine wave
clc;
clear;
T=8;//Defining Time Period
A=2;//Defining Amplitude

t=0:0.01:15;
w0=2*%pi/T;

function x=f(t),x=A.*abs(sin(t.*w0)) ,endfunction  //given full wave rectified continuous signal
plot(t,f);
xlabel("time");
ylabel("x(t)");



//Check if Even Signal,if yes,then bn=0
if(f(t)==f(-1*t))
    
        disp('even');
        disp('bn=0');
        function x=f(t),x=A.*abs(sin(t.*w0)) ,endfunction  //given signal
        //Evaluation of a0 & an
        //Evaluation of a0:
        a0=4*intg(0,T/2,f)/T;  //definite integral of 'f' from 0 to T/2
        disp(a0,'a0');

        //Evaluation of an:
        disp('due to convergence,for all odd values of n,a=0');
        disp('for even values of n,an values are=>');
        y0=a0/2+zeros(1,length(t));
        for n=2:2:8                  //changing the end value of n,we can get more numbers of an
        function xn=f1(t),xn=A.*abs(sin(t.*w0)).*cos(n.*w0.*t) ,endfunction 
        an=4*intg(0,T/2,f1)/T;
        disp(n,'a');
        disp(an);
        y0=y0+an.*cos(n*w0.*t);
        xset('window',1);
        subplot(2,2,n/2);
        plot(t,y0);
        xlabel("time");
        ylabel("x(t)*cos(n*w0*t) for n=");
        end

        xset('window',2);
        plot(t,y0);

        xset('window',2);
        plot(t,y0);
    
    else if(f(t)==(-1*f(-1*t)))
    
        disp('odd signal=>a0=an=0');
        function x=f(t),x=A.*abs(sin(t.*w0)) ,endfunction //redefining signal
        //Evaluation of bn=>
        y0=zeros(1,length(t));
        for n=1:1:8                  //changing the end value of n,we can get more numbers of bn
        function xn=f1(t),xn=A.*abs(sin(t.*w0)).*sin(n.*w0.*t) ,endfunction 
        bn=4*intg(0,T/2,f1)/T;
        disp(n,'b');
        disp(bn);
        y0=y0+bn.*sin(w0.*n.*t);
        xset('window',1);
        subplot(2,4,n);
        plot(t,y0);
        xlabel("time");
        ylabel("x(t)*sin(n*w0*t) for n=");
        end
    
    else
    
        disp('unknown');
        function xn=f1(t),xn=A.*abs(sin(t.*w0)).*sin(n.*w0.*t) ,endfunction 
        //Evaluation of a0,an & bn
        //Evaluation of a0:
        a0=4*intg(0,T/2,f)/T;  //definite integral of 'f' from 0 to T/2
        disp(a0,'a0');

        //Evaluation of an:
        y0=a0/2+zeros(1,length(t));
        for n=1:1:8                  //changing the end value of n,we can get more numbers of an
        function xn=f1(t),xn=A.*abs(sin(t.*w0)).*cos(n.*w0.*t) ,endfunction 
        an=4*intg(0,T/2,f1)/T;
        disp(n,'a');
        disp(an);
        y0=y0+an.*cos(n*w0.*t);
        xset('window',1);
        subplot(2,2,n/2);
        plot(t,y0);
        xlabel("time");
        ylabel("x(t)*cos(n*w0*t) for n=");
        end
    
        //Evaluation of bn=>
        y0=zeros(1,length(t));
        for n=1:1:8                  //changing the end value of n,we can get more numbers of bn
        function xn=f1(t),xn=A.*abs(sin(t.*w0)).*sin(n.*w0.*t) ,endfunction 
        bn=4*intg(0,T/2,f1)/T;
        disp(n,'b');
        disp(bn);
        y0=y0+bn.*sin(w0.*n.*t);
        xset('window',1);
        subplot(2,4,n);
        plot(t,y0);
        xlabel("time");
        ylabel("x(t)*sin(n*w0*t) for n=");
        end
    
end
end

xset('window',2);
plot(t,y0);//x(t) signal till 8 harmonics