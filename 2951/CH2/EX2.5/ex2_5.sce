clc;
clear;


//delta(t)

  for j = 1:1000
        if j==1
        delta(j)=1;
    else
        delta(j)=0;
     end
    end

// a)
figure(1)
 t=-1;
 plot2d4(t,0);
    for j=1:1:10
        t=t+1;
       z(j)=(cosd(j-1)*delta(j));
        plot2d3(t,z(j));
        disp(z(j));
      
    end


//b)
figure(2)
 t=1.5;
 plot2d4(t,0);
    for j=3:1:10
        t=t+1;
        z(j)=abs(cosd(2.5)*delta(2*j-5));
        plot2d3(t,z(j));
        
    end

//c)
syms t;

A=(-1)*exp(-1*t); //property 8
disp(diff(A,t));

disp("when t=3");

A=exp(-3);
disp(A);



  






    
