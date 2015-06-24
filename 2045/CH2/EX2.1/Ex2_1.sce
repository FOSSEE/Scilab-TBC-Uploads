//pagenumber 99 example 1
clear
q=0.01;//centimetre
sigma1=1;//ohm centimetre inverse
q1=0.01;//centimetre
sigm11=0.01;//ohm centimetre inverse
iratio=(0.0224^2*2.11*20)*3.6^2/((3.11*(4.3^2*10^-6)^2*2.6*20*10^3));
for q=1:2
    if q==1 then
        un=3800;
        up=1500;
        q=1.6*10^-19;
        ni=2.5*10;
    else
        q=1.6*10^-19;
        up=500
        un=1300;
        ni=1.5*10
end
    
    b=un/up;
    sigmai=(un+up)*q*ni;
end
disp("ratio of reverse saturation current   =   "+string((iratio)));//correction in the book





