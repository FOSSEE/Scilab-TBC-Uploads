function x=muller3(x0,x1,x2,f)
    R=3;
    PE=10^-8;
    maxval=10^4;
     for n=1:1:R
   
    La=(x2-x1)/(x1-x0);      
    Da=1+La;
    ga=La^2*f(x0)-Da^2*f(x1)+(La+Da)*f(x2);
    Ca=La*(La*f(x0)-Da*f(x1)+f(x2));
    
     q=ga^2-4*Da*Ca*f(x2);
     if q<0 then q=0;
     end
     p= sqrt(q);
     if ga<0 then p=-p;
     end
        La=-2*Da*f(x2)/(ga+p);
        x=x2+(x2-x1)*La; 
        if abs(f(x))<=PE then break
        end
        if (abs(f(x))>maxval) then error('Solution diverges');
            abort;
            break
        else 
        x0=x1;
        x1=x2;
         x2=x;
        end 
    end
    disp(n," no. of iterations =")
endfunction