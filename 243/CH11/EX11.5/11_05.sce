//Example No. 11_05
//Differentiation of tabulated data
//Pg No. 358
clear ;close ;clc ;

T = 5:9 ;
s = [10  14.5  19.5  25.5  32 ];
h = T(2)-T(1);
n = length(T)
function V = v(t)
    if find(T == t) == 1 then
        V = [ -3*s( find(T == t) ) + 4*s( find(T==(t+h)) ) - s( find( T == (t+2*h) ) ) ]/(2*h) //Three point forward difference formula
    elseif find(T == t) == n
        V = [ 3*s( find(T == t) ) - 4*s( find(T==(t-h)) ) + s( find( T == (t-2*h) ) ) ]/(2*h) //Backward difference formula
    else
        V = [ s( find(T == (t+h)) ) - s( find(T == (t-h)) ) ]/(2*h) //Central difference formula
    end
endfunction

v_5 = v(5)
v_7 = v(7)
v_9 = v(9)

disp(v_9,'v(9) = ',v_7,'v(7) = ',v_5,'v(5) = ')