function x=bisection5(a,b,f)
    N=5;                                      //define max. number of iterations
    PE=10^-4;                                  //define tolerance
    if (f(a)*f(b) > 0) then error('no root possible f(a)*f(b) > 0')    // checking if the decided range is containing a root
	      abort;
    end;
    if(abs(f(a)) < PE) then
	    error('solution at a')                    // seeing if there is an approximate root at a,
	     abort;
    end;
    if(abs(f(b)) < PE) then                       //seeing if there is an approximate root at b,
	error('solution at b')
	abort;
    end;
    x=(a+b)/2
    for n=1:1:N                                   //initialising 'for' loop,
        p=f(a)*f(x)
        if p<0 then b=x ,x=(a+x)/2;                //checking for the required conditions( f(x)*f(a)<0),
        else
             a=x
            x=(x+b)/2;
        end
        if abs(f(x))<=PE then break                // instruction to come out of the loop after the required condition is achived,   
        end
    end
    disp(n," no. of iterations =")                 // display the no. of iterations took to achive required condition,
endfunction