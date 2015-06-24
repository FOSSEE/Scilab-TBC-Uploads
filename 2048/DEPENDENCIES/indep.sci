// function b = indep(S,gap)
// determines the first row that is dependent on the previous rows of S.
// The coefficients of dependence is returned in b
function b = indep( S,gap)

if argn(2) == 1
        gap = 1.0e8;
        end
[rows,cols] = size(S);
ind = 1;
i = 2;
eps = 2.2204e-016;
while ind & i <= rows    
      sigma = svd(S(1:i,:));
      len = length(sigma);
      if(sigma(len)/sigma(1) < (eps*max(i,cols)))
        ind =0;
      else
        shsig = [sigma(2:len);sigma(len)];
        if or( (sigma ./shsig) > gap)
           ind = 0;
        else
           ind = 1;
           i = i+1;
        end
      end
      
end
if ind
        b =[];

else
        c = S(i,:)/S(1:i-1,:);
        c = makezero(c,gap);
        b = [-c 1];
end
endfunction

