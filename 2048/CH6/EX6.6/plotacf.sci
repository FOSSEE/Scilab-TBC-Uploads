// Procedure to plot the ACF, as discussed in Sec. 6.4.3. An example usage is given in 6.5.
// 6.6

// PLOTACF: Plots normalized autocorrelation function
//
// USAGE:: [acf]=plotacf(x,errlim,len,print_code)
//
// WHERE:: acf = autocorrelation values
// x = time series data
// errlim > 0; error limit = 2/sqrt(data_len)
// len = length of acf that need to to be plotted
// NOTE: if len=0 then len=data_length/2;
// print_code = 0 ==> does not plot OR ELSE plots
//
// Pranob Banerjee

function [x]=plotacf(y,errlim,len,code)
exec('label.sci',-1)
x = xcov(y); l = length(y); x = x/x(l);
r=l:2*(l-1); lim=2/sqrt(l); rl=1:length(r) ; 
N=length(rl); x=x(r); 
if len>0 & len<N, rl=1:len; x=x(rl); N=len; end;
if(code > 0 )
  if(errlim > 0 )
    rl=rl-1;
    plot(rl,x,rl,x,'o' , rl,lim*ones(N,1),'--', ...
         rl,-lim*ones(N,1),'--')
    xgrid
  else
    plot(rl,x)
  end
end;
a = gca();
a.data_bounds = [0 min(min(x),-lim-0.1); len-1 1.1];
label(' ',4,'Lag','ACF',4)
endfunction;
