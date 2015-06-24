function Hd=iodelay(H,d)
// Author: Serge Steer, Copyright INRIA
  if or(size(H.num)<>size(d)) then error('Dimension mismatch'),end
  Hd=mlist(['rd','H','iodelay'],H,d)
endfunction

//element wise product  overloading functions
function H=%rd_x_rd(H1,H2)
// Author: Serge Steer, Copyright INRIA
  H=mlist(['rd','H','iodelay'],H1.H.*H2.H,H1.iodelay+ H2.iodelay)
endfunction
function H=%rd_x_r(H1,H2)
// Author: Serge Steer, Copyright INRIA
  H=mlist(['rd','H','iodelay'],H1.H.*H2,H1.iodelay)
endfunction
function H=%r_x_rd(H1,H2)
// Author: Serge Steer, Copyright INRIA
  H=mlist(['rd','H','iodelay'],H1.*H2.H,H2.iodelay)
endfunction
function H=%rd_x_s(H1,H2)
// Author: Serge Steer, Copyright INRIA
  H=mlist(['rd','H','iodelay'],H1.H.*H2,H1.iodelay)
endfunction
function H=%s_x_rd(H1,H2)
// Author: Serge Steer, Copyright INRIA
  H=mlist(['rd','H','iodelay'],H1.*H2.H,H2.iodelay)
endfunction

//column concatenation  overloading functions
function H=%rd_c_rd(H1,H2)
// Author: Serge Steer, Copyright INRIA
  H=mlist(['rd','H','iodelay'],[H1.H H2.H],[H1.iodelay,H2.iodelay])
endfunction
function H=%rd_c_r(H1,H2)
// Author: Serge Steer, Copyright INRIA
  H=mlist(['rd','H','iodelay'],[H1.H H2],[H1.iodelay,zeros(H2.num)])
endfunction
function H=%r_c_rd(H1,H2)
// Author: Serge Steer, Copyright INRIA
  H=mlist(['rd','H','iodelay'],[H1 H2.H],[zeros(H1.num),H2.iodelay])
endfunction
function H=%rd_c_s(H1,H2)
// Author: Serge Steer, Copyright INRIA
  H=mlist(['rd','H','iodelay'],[H1.H H2],[H1.iodelay,zeros(H2.num)])
endfunction
function H=%s_c_rd(H1,H2)
// Author: Serge Steer, Copyright INRIA
  H=mlist(['rd','H','iodelay'],[H1 H2.H],[zeros(H1.num),H2.iodelay])
endfunction

//row concatenation  overloading functions
function H=%rd_f_rd(H1,H2)
// Author: Serge Steer, Copyright INRIA
  H=mlist(['rd','H','iodelay'],[H1.H;H2.H],[H1.iodelay;H2.iodelay])
endfunction
function H=%rd_f_r(H1,H2)
// Author: Serge Steer, Copyright INRIA
  H=mlist(['rd','H','iodelay'],[H1.H;H2],[H1.iodelay;zeros(H2.num)])
endfunction
function H=%r_f_rd(H1,H2)
// Author: Serge Steer, Copyright INRIA
  H=mlist(['rd','H','iodelay'],[H1;H2.H],[zeros(H1.num);H2.iodelay])
endfunction
function H=%rd_f_s(H1,H2)
// Author: Serge Steer, Copyright INRIA
  H=mlist(['rd','H','iodelay'],[H1.H;H2],[H1.iodelay;zeros(H2.num)])
endfunction
function H=%s_f_rd(H1,H2)
// Author: Serge Steer, Copyright INRIA
  H=mlist(['rd','H','iodelay'],[H1;H2.H],[zeros(H1.num);H2.iodelay])
endfunction

//matrix product  overloading functions
function H=%rd_m_rd(H1,H2)
// Author: Serge Steer, Copyright INRIA
  D1=H1.iodelay
  D2=H2.iodelay
  D=D1*D2;
    for k=1;size(D2,2)
    for l=1:size(D1,1)
      d=D1(l,:)+(D2(:,k)')
      if or(d(1)<>d) then error('Delays mismatched'),end
      D(l,k)=d
    end
  end
  H=mlist(['rd','H','iodelay'],H1.H*H2.H,D)
endfunction
function H=%rd_m_r(H1,H2)
// Author: Serge Steer, Copyright INRIA
  D1=H1.iodelay
  for l=1:size(D1,1)
    if or(D1(l,1)<>D1(l,:)) then error('Delays mismatched'),end
  end
  H=mlist(['rd','','iodelay'],H1.H*H2,D1)
endfunction
function H=%rd_m_s(H1,H2)
// Author: Serge Steer, Copyright INRIA
  D1=H1.iodelay
  for l=1:size(D1,1)
    if or(D1(l,1)<>D1(l,:)) then error('Delays mismatched'),end
  end
  H=mlist(['rd','H','iodelay'],H1.H*H2,D1)
endfunction
function H=%r_m_rd(H1,H2)
// Author: Serge Steer, Copyright INRIA
  D2=H2.iodelay
  for l=1:size(D2,2)
    if or(D2(1,l)<>D2(:,l)) then error('Delays mismatched'),end
  end
  H=mlist(['rd','H','iodelay'],H1*H2.H,D2)
endfunction
function H=%s_m_rd(H1,H2)
// Author: Serge Steer, Copyright INRIA
  D2=H2.iodelay
  for l=1:size(D2,2)
    if or(D2(1,l)<>D2(:,l)) then error('Delays mismatched'),end
  end
  H=mlist(['rd','H','iodelay'],H1*H2.H,D2)
endfunction

//Addition  overloading functions
function H=%rd_a_rd(H1,H2)
// Author: Serge Steer, Copyright INRIA
  D1=H1.iodelay
  D2=H2.iodelay
  if or(D1<>D2) then error('Delay mismatch'),end
  H=mlist(['rd','H','iodelay'],H1.H+H2.H,D1)
endfunction
function H=%rd_a_r(H1,H2)
// Author: Serge Steer, Copyright INRIA
  D1=H1.iodelay
  if or(D1<>0) then error('Delay mismatch'),end
  H=mlist(['rd','H','iodelay'],H1.H+H2,D1)
endfunction
function H=%rd_a_s(H1,H2)
// Author: Serge Steer, Copyright INRIA
  D1=H1.iodelay
  if or(D1<>0) then error('Delay mismatch'),end
  H=mlist(['rd','H','iodelay'],H1.H+H2,D1)
endfunction
function H=%r_a_rd(H1,H2)
// Author: Serge Steer, Copyright INRIA
  D2=H2.iodelay
  if or(D2<>0) then error('Delay mismatch'),end
  H=mlist(['rd','H','iodelay'],H1+H2.H,D2)
endfunction

//Substraction  overloading functions
function H=%rd_a_rd(H1,H2)
// Author: Serge Steer, Copyright INRIA
  D1=H1.iodelay
  D2=H2.iodelay
  if or(D1<>D2) then error('Delay mismatch'),end
  H=mlist(['rd','H','iodelay'],H1.H-H2.H,D1)
endfunction
function H=%rd_a_r(H1,H2)
// Author: Serge Steer, Copyright INRIA
  D1=H1.iodelay
  if or(D1<>0) then error('Delay mismatch'),end
  H=mlist(['rd','H','iodelay'],H1.H-H2,D1)
endfunction
function H=%rd_a_s(H1,H2)
// Author: Serge Steer, Copyright INRIA
  D1=H1.iodelay
  if or(D1<>0) then error('Delay mismatch'),end
  H=mlist(['rd','H','iodelay'],H1.H-H2,D1)
endfunction
function H=%r_a_rd(H1,H2)
// Author: Serge Steer, Copyright INRIA
  D2=H2.iodelay
  if or(D2<>0) then error('Delay mismatch'),end
  H=mlist(['rd','H','iodelay'],H1-H2.H,D2)
endfunction

//extraction  overloading functions
function H=%rd_e(varargin)
// Author: Serge Steer, Copyright INRIA
  H=varargin($)
  Hh= H.H;Hh.num=Hh.num(varargin(1:$-1));Hh.den=Hh.den(varargin(1:$-1));
  H.H=Hh
  H.iodelay=H.iodelay(varargin(1:$-1))
endfunction

//insertion  overloading functions
function H=%rd_i_rd(varargin)
// Author: Serge Steer, Copyright INRIA
  H=varargin($)
  Hfrom=varargin($-1)
  
  Hh= H.H
  Hh.num(varargin(1:$-2))=Hfrom.H.num
  Hh.den(varargin(1:$-2))=Hfrom.H.den
  H.H=Hh
  H.iodelay(varargin(1:$-2))=Hfrom.iodelay
endfunction
function H=%r_i_rd(varargin)
// Author: Serge Steer, Copyright INRIA
  H=varargin($)
  Hfrom=varargin($-1)
  
  Hh= H.H
  Hh.num(varargin(1:$-2))=Hfrom.num
  Hh.den(varargin(1:$-2))=Hfrom.den
  H.H=Hh
  H.iodelay(varargin(1:$-2))=zeros(Hfrom.num)
endfunction
function H=%s_i_rd(varargin)
// Author: Serge Steer, Copyright INRIA
  H=varargin($)
  Hfrom=varargin($-1)
  
  Hh= H.H
  Hh.num(varargin(1:$-2))=Hfrom
  Hh.den(varargin(1:$-2))=ones(Hfrom)
  H.H=Hh
  H.iodelay(varargin(1:$-2))=zeros(Hfrom)
endfunction
function H=%rd_i_r(varargin)
// Author: Serge Steer, Copyright INRIA
  Hh=varargin($)
  Hfrom=varargin($-1)
  Hh.num(varargin(1:$-2))=Hfrom.H.num
  Hh.den(varargin(1:$-2))=Hfrom.H.den
  D=zeros(Hh.num)
  D(varargin(1:$-2))=Hfrom.iodelay
  H=mlist(['rd','H','iodelay'],Hh,D)
endfunction
function H=%rd_i_s(varargin)
// Author: Serge Steer, Copyright INRIA
  num=varargin($);den=ones(num)
  Hfrom=varargin($-1)

  num(varargin(1:$-2))=Hfrom.H.num
  den(varargin(1:$-2))=Hfrom.H.den
  D=zeros(num)
  D(varargin(1:$-2))=Hfrom.iodelay
  H=mlist(['rd','H','iodelay'],rlist(num,den,'c'),D)
endfunction

//transpostion  overloading function
function H=%rd_t(H)
// Author: Serge Steer, Copyright INRIA
  H.H=H.H'
  H.iodelay=H.iodelay'
endfunction

//string overloading function
function txt=%rd_string(H)
// Author: Serge Steer, Copyright INRIA
  r=H.H
  N=string(r.num)
  D=string(r.den)
  ln=max(matrix(length(N),2,-1),'r')
  ld=max(matrix(length(D),2,-1),'r')
  l=max(ln,ld)
  [m,n]=size(r.num);
  S=emptystr(m,n)
  
  kz=find(H.iodelay==0);//zero delay entries
  w='exp('+string(-H.iodelay)+'*s)*';w(kz)='';

  for i=1:m*n
    s=2*i-1:2*i
    pw=part(' ',1:length(w(i)))
    N(s)=pw+part(' ',1:(l(i)-ln(i))/2)+N(s)
    D(s)=pw+part(' ',1:(l(i)-ld(i))/2)+D(s)
    S(i) =w(i)+part('-',ones(1,l(i))) 
  end
  txt=emptystr(5*m,n);
  txt(1:5:$,:)=N(1:2:$,:)
  txt(2:5:$,:)=N(2:2:$,:)
  txt(3:5:$,:)=S(1:$,:)
  txt(4:5:$,:)=D(1:2:$,:)
  txt(5:5:$,:)=D(2:2:$,:)
endfunction


//Display  overloading function
function %rd_p(H)
// Author: Serge Steer, Copyright INRIA
//used to display rational fraction with complex coefficients
//The real case is hard coded
// Copyright INRIA
  T=string(H)
  l=max(length(T),'r')
  Te=emptystr(size(T,1),1)
  for k=1:size(T,2)
    Te=Te+part(T(:,k),1:l(k)+1)+'  '
  end
  mprintf("%s\n",Te)
endfunction


//frequency response computation overloading
function [frq,repf,splitf]=repfreq(varargin)
// Author: Serge Steer, Copyright INRIA
  H=varargin(1)
  autolib.repfreq
  if typeof(H)=='rd' then
    D=H.iodelay
    varargin(1)=H.H
    [frq,repf,splitf]=repfreq(varargin(:))

    w=-2*%i*%pi*frq;
    for k=1:size(D,'*')
      repf(k,:)=repf(k,:).*exp(D(k)*w)
    end
  else
    [frq,repf,splitf]=repfreq(varargin(:))
  end
endfunction

//bode plot computation overloading
function bode(varargin)
// Author: Serge Steer, Copyright INRIA
  H=varargin(1)
  xdesslib.bode
  if typeof(H)=='rd' then
    if type(varargin($))==10 then //a comment
      cm=varargin($);varagin($)=null()
    else
      cm=''
    end
    D=H.iodelay
    varargin(1)=H.H
    [frq,repf,splitf]=repfreq(varargin(1:$))
    w=-2*%i*%pi*frq;
    for k=1:size(D,'*')
      repf(k,:)=repf(k,:).*exp(D(k)*w)
    end
    bode(frq,repf)
  else
   bode(varargin(:))
  end
endfunction

//nyquist plot computation overloading
function nyquist(varargin)
// Author: Serge Steer, Copyright INRIA
  H=varargin(1)
  xdesslib.nyquist
  if typeof(H)=='rd' then
    if type(varargin($))==10 then //a comment
      cm=varargin($);varagin($)=null()
    else
      cm=''
    end
    D=H.iodelay
    varargin(1)=H.H
    [frq,repf,splitf]=repfreq(varargin(1:$))
    w=-2*%i*%pi*frq;
    for k=1:size(D,'*')
      repf(k,:)=repf(k,:).*exp(D(k)*w)
    end
    nyquist(frq,repf)
  else
   nyquist(varargin(:))
  end
endfunction

