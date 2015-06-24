//error
//ques15,16,17
//yo=[1.98 1.30 1.05 1.30 -0.88 -.25 1.98]
//x0=[0 1/6 1/3 1/2 2/3 5/6 1]
disp('Practical harmonic analysis');
syms x T
xo=input('Input xo matrix (in factor of T) : ');
yo=input('Input yo matrix : ');
ao=2*sum(yo)/length(xo);
s=ao/2;
n=input('No of sin or cos term in expansion : ');
 i=1
  an=2*(yo.*cos(i*xo*2*%pi))/length(yo);
  bn=2*(yo.*sin(i*xo*2*%pi))/length(yo);
  s=s+float(an)*cos(i*x*2*%pi/T)+float(bn)*sin(i*x*2*%pi/T);
    
  disp(s);
  disp('Direct current :');
 i=sqrt(an^2+bn^2);  
