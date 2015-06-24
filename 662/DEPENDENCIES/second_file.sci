//Programming Example 8.12
//calculate Fibonacci number (F=1 for i<3, and F= F1+F2 for i>=3)
        //Second File

function[f]=Fibonacci(count)
global f1;
global f2;
global first;

//As in static variables the initialization takes place only once 
//but static is not available in scilab 
// hence use of global variable first is made here
// and initialized only once..
if(first=="true") then            
    f1=1;
    f2=1 ;
    first="false" ;
end

      
    if(count<3) then
        f=1
    else
        f=f1+f2
    end
    f2=f1;
    f1=f;
    return f;
endfunction