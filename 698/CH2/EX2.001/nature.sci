//Function to determine nature of normal stresses, i.e, compressive or tensile

funcprot(0)
function nature(Sn)
    if Sn<0
   disp(" compressive")
else
    disp(" tensile")
end
endfunction