            //Example 7.7
            clc
//determine the larger of two integer quantities
function[] = maximum(x, y)
    if (x >= y) then z=x; else z=y;
    end
    printf("\n\nMaximum value = %d", z);
    return;
endfunction
