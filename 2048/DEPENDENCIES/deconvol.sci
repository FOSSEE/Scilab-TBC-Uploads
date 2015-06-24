function q = deconvol(b,a)
  
  if a(1) == 0
    error('1st coefficient of A must be nonzero');
  end;
  
exec('filt.sci',-1);

nb = length(b); na = length(a);

  if na>nb
    q = 0;
  else
    q = filt(b,a,[1 zeros(1,nb-na)]);
  end;
q = clean(q);
endfunction;




