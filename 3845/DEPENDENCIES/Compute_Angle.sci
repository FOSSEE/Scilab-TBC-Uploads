//To compute the angle (direction) in degrees measured anti-clockwise from the positive x-axis about the origin to a point, when the cartesian coordinates (x,y) of a point are known
function [theta]=Compute_Angle(x,y)
    if x==0&y==0
        theta=atand(y/x);
    elseif x==0&y>0
        theta=90;
    elseif x==0&y<0
        theta=270;
    elseif x>0&y>=0
        theta=atand(y/x);
    elseif x<0&y>=0
        theta=180-atand(abs(y/x));
    elseif x<0&y<0
        theta=270-atand(abs(y/x));
    elseif x>0&y<0
        theta=360-atand(abs(y/x));      
end
endfunction
