function [g] = gray(m)
    g = (0:m-1)'/max(m-1,1)
g = [g g g]
endfunction