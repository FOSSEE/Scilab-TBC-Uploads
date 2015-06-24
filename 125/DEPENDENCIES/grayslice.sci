function [bout] = grayslice(I,z)

// Output variables initialisation (not found in input variables)
bout=[];

// Number of arguments in function call
[%nargout,%nargin] = argn(0)

if %nargin==1 then
  z = 10;
elseif ~type(z)==1 then
  z = double(z);
end;
n = z;
if typeof(I)=="uint8" then
 z = (255*(0:n-1))/n;
elseif isa(I, 'uint16') | isa(I, 'int16') then
 z = 65535*(0:(n-1))/n; 
else // I is double or single
 z = (0:(n-1))/n
end;
[m,n] = size(I);
b = zeros(m,n);
// Loop over all intervals, except the last
for i = 1:length(z)-1
  // j is the index value we will output, so it depend upon storage class
    if typeof(b)=='uint8' 
      j = i-1; 
   else 
      j = i;  
   end
   d = find(I>=z(i) & I<z(i+1));
   if ~isempty(d), 
      b(d) = j; 
   end
end

// Take care of that last interval
d = find(I >= z($));
if ~isempty(d) then
  // j is the index value we will output, so it depend upon storage class
  if typeof(b)=="uint8" then
   j = length(z)-1; 
  else
   j = length(z); 
  end;
  b(d) = j; 
end;
bout = b;
bout = double(bout);
endfunction