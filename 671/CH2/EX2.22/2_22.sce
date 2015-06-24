function p=parallel(r1,r2)
    p=r1*r2/(r1+r2)
endfunction

//Thevenin Equivalent
I=(32-8)/30
Voc=32-20*I
Ro=parallel(20,10)
disp(Ro,Voc)

//Norton Equivalent
Isc=32/20+8/10
disp(Ro,Isc)