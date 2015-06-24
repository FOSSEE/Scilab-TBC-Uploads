// function B = makezero(B,gap)
// where B is a vector and gap acts as a tolerance

function B = makezero(B,gap)

if argn(2) == 1
   gap = 1.0e8;
end
temp = B(find(B));        // non zero entries of B
temp = -gsort(-abs(temp),'g','d'); // absolute values sorted in descending order
len = length(temp);
ratio = temp(1:len-1) ./temp(2:len); // each ratio >1
min_ind = min(find(ratio>gap));
if ~isempty(min_ind)
   our_eps = temp(min_ind+1);
   zeroind = find(abs(B)<=our_eps);
   B(zeroind) = zeros(1,length(zeroind));
end
endfunction
