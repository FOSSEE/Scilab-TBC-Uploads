function [t_alpha] = stand_students_t_distri(alpha)
    if (alpha ==0.05) then
        t_alpha = 1.711;
    elseif (alpha==0.01) then
        t_alpha = 2.602;
    elseif (alpha==0.025) then
        t_alpha = 2.064;
    end
endfunction