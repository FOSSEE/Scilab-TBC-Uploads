//clear//
clear;
clc;

//Example 29.2
//Given
n = 1:7;
beeta = 1.3;
//From Table 29.2
Dpn = [3.327,2.362,1.651,1.168,0.833,0.589,0.417]'; //[mm]
Dpu = Dpn; //[mm]
xn0 = [0.0251,0.125,0.3207,0.2570,0.1590,0.0538,0.0210]';
Su(1) = 10*10^-4; //[s^-1]
//B(1) = 1;
//Solution 

//(a)
//For the 4/6-mesh materials there is no input from coarser
//material and applying Eq.(29.11). At the end of time tT
x1 = xn0(1)*0.9;
tT = 1/Su(1)*log(xn0(1)/x1); //[s]
disp('s',tT,'Required time is');

//(b)

//Assuming Su varies with Dp^3
for i = 1:length(Dpn)-1
  Su(i+1) = Su(i)*(Dpn(i+1)/Dpn(i))^3; //[s^-1]
end
for i = 1:length(Dpn)
  for j = 1:length(Dpu)    
//Using Eq.(29.13)
    if (j<i)
      B(i,j)=0;
    else
      B(i,j) = (Dpn(j)/Dpn(i))^beeta;
    end    
end
end

for i = 1:length(Dpn)-1
  for j = 1:length(Dpu)-1
    if (j<i)
      delta_B(i,j)=0;
      else
      delta_B(i,j) = B(i,j)-B(i,j+1);
    end   
  end
end
disp(delta_B,'individual breakage functions');

//(c)
deltaT = 30; //[s] 
//Using Eq.(29.15)
x=[];
x(:,1) = xn0;
for n = 1:length(xn0)
    for t = 1:720
    if (n==1)
      x(n,t+1) = x(n,t)*(1-Su(n)*deltaT);
    else
      x(n,t+1) = x(n,t)*(1-Su(n)*deltaT)+ deltaT*Su(n-1)*delta_B(n-1,n-1)*x(n-1,t);
    end
  end
end
time = linspace(0,6,721);
for i =1:length(xn0)
  plot2d(time,x(i,:),style = i);
  xgrid();
  xlabel('time (h)');
  ylabel('mass fraction (xa)');
  title('Mass fractions');
  legend('x1','x2','x3','x4','x5','x6','x7');
end
