function[F]=aliasfrequency(f,s,s1)
if (s>2*f) then
    disp("alias has not occured")
else
    disp("alias has occured")
end
F=f/s;
for i=1:100
    if (abs(F)>0.5)
        F=F-i;
    end
end
fa=F*s1;
disp(fa,"frequency of reconstructed signal is")
endfunction