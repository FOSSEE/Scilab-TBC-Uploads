//ques15
//yo=[1.80 1.10 0.30 0.16 1.50 1.30 2.16 1.25 1.30 1.52 1.76 2.00]
//x0=[0 %pi/6 %pi/3 %pi/2 2*%pi/3 5*%pi/6 %pi 7*%pi/6 4*%pi/3 3*%pi/2 5*%pi/3 11*%pi/6]
disp('Practical harmonic analysis');
syms x 
xo=input('Input xo matrix : ');
yo=input('Input yo matrix : ');
ao=2*sum(yo)/length(xo);
s=ao/2;
n=input('No of sin or cos term in expansion : ');
for i=1:n
  an=2*sum(yo.*cos(i*xo))/length(yo);
  bn=2*sum(yo.*sin(i*xo))/length(yo);
  s=s+float(an)*cos(i*x)+float(bn)*sin(i*x);
    
  end
  disp(s);
  
