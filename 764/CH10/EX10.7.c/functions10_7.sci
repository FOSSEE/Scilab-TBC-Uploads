
//Function for calculating the number of active coils in a spring
function[Nt] = active_coils(endtype, coil)
    //For plain ends, endtype = 1
    //For plain ends(ground), endtype = 2
    //For square ends, endtype = 3
    //For square ends(ground), endtype = 4
    if (endtype == 1) then
        Nt = coil
    elseif (endtype == 2)
        Nt = coil + 0.5
    elseif (endtype == 3)
        Nt = coil + 2
    elseif (endtype == 4)
        Nt = coil + 2
    end
endfunction
