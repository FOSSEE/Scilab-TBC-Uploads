function [t_alpha] = stand_students_t_VarUnkn(alpha)
    if (alpha ==0.05) then
        t_alpha = 1.645;
    elseif (alpha==0.01) then
        t_alpha = 2.326;
    end
endfunction