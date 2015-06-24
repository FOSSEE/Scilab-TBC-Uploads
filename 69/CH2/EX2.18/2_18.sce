clear; clc; close;

amp = 20;
vi_t = -5;//transition voltage

t = 0:0.1:2*%pi;
vi = amp*sin(t);
vo = vi+5;    //output voltage

disp(vi_t,'transition voltage : ');

for i = 1:length(t)
    if(vo(i)<=0)
        vo(i)=0;
    end
    
    
end

plot(t,vo);
xtitle('Ouptut voltage','t','vo');