//degrees to radian conversion
function [radians] = dtor(degrees)
    radians = degrees*(%pi/180); 
endfunction

//radian to degrees conversion
function [degrees] = rtod(radian)
    degrees = radian*(180/%pi); 
endfunction